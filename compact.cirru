
{} (:package |docs-workflow)
  :configs $ {} (:init-fn |docs-workflow.main/main!) (:reload-fn |docs-workflow.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/
    :version |0.0.1
  :entries $ {}
  :files $ {}
    |docs-workflow.comp.container $ {}
      :ns $ quote
        ns docs-workflow.comp.container $ :require (respo-ui.core :as ui)
          respo-ui.core :refer $ hsl
          respo.core :refer $ defcomp defeffect <> >> div button textarea span input list->
          respo.comp.space :refer $ =<
          reel.comp.reel :refer $ comp-reel
          respo-md.comp.md :refer $ comp-md
          docs-workflow.config :refer $ dev?
          docs-workflow.schema :refer $ docs
          "\"remarkable" :refer $ Remarkable
          "\"highlight.js" :default hljs
          "\"cirru-color" :as color
          respo-alerts.core :refer $ use-modal
      :defs $ {}
        |comp-nav-tree $ quote
          defcomp comp-nav-tree (docs base-path on-select)
            list-> ({})
              -> docs $ map
                fn (entry)
                  [] (:key entry)
                    div ({})
                      div
                        {} (:class-name "\"doc-entry")
                          :style $ {} (:padding "\"0 8px") (:cursor :pointer)
                          :on-click $ fn (e d!)
                            on-select
                              conj base-path $ :key entry
                              , d!
                        <> $ :title entry
                      if-let
                        xs $ :children entry
                        div
                          {} $ :style
                            {} $ :padding-left 16
                          comp-nav-tree xs
                            conj base-path $ :key entry
                            , on-select
        |style-entry $ quote
          def style-entry $ {} (:padding "\"0 8px") (:cursor :pointer) (:transition-duration "\"200ms") (:line-height 2.4)
            :border-bottom $ str "\"1px solid " (hsl 0 0 92)
            :border-left $ str "\"0px solid " (hsl 200 90 60)
            :background-color $ hsl 0 0 100 0.6
        |comp-container $ quote
          defcomp comp-container (reel docs)
            let
                store $ :store reel
                states $ :states store
                cursor $ or (:cursor states) ([])
                state $ or (:data states)
                  {}
                    :selected $ []
                    :history $ []
                selected $ :selected state
                history $ :history state
                quick-modal $ use-modal (>> states :quick)
                  {} (:title "|Quick jump")
                    :style $ {} (:max-width "\"40vw") (:height "\"90vh") (:max-height "\"90vh") (:margin-right 0)
                    :render $ fn (on-close)
                      div
                        {} $ :style
                          {} $ :padding "\"0 16px"
                        comp-nav-tree docs ([])
                          fn (path d!)
                            d! cursor $ next-path state path
              div
                {} (:class-name "\"calcit-tile")
                  :style $ merge ui/fullscreen ui/global ui/row
                div
                  {} $ :style
                    {} (:padding "\"0 8px") (:width "\"20%") (:min-width 266) (:background-color :white)
                      :border-right $ str "\"1px solid " (hsl 0 0 94)
                  div
                    {}
                      :style $ {} (:position :absolute) (:right 8) (:top 4)
                      :on-click $ fn (e d!) (.show quick-modal d!)
                    <> "\"Quick Jump" $ {} (:cursor :pointer) (:font-family ui/font-fancy)
                  div
                    {} $ :style
                      {} $ :margin-top 12
                    <> "\"Pages" $ {} (:font-family ui/font-fancy)
                  comp-parent-menu selected docs $ fn (path d!)
                    d! cursor $ next-path state path
                  let
                      parent-path $ or (butlast selected) ([])
                      entries $ find-entries docs parent-path
                    comp-page-entries (last selected) parent-path entries $ fn (xs d!)
                      d! cursor $ next-path state xs
                  div
                    {} $ :style
                      {} $ :margin-top 20
                    <> "\"Histories" $ {} (:font-family ui/font-fancy)
                    comp-history-menu history $ fn (path d!)
                      d! cursor $ next-path state path
                let
                    target $ find-target docs (:selected state)
                  div
                    {} $ :style ui/expand
                    let
                        children $ or (:children target) ([])
                      if (empty? children) nil $ div
                        {} $ :style
                          {} $ :padding "\"16px"
                        div ({})
                          <> "\"Children pages" $ {} (:font-family ui/font-fancy)
                        comp-page-entries nil (:selected state) children $ fn (xs d!)
                          d! cursor $ next-path state xs
                    comp-doc-page target
                .render quick-modal
                when dev? $ comp-reel (>> states :reel) reel ({})
        |find-target $ quote
          defn find-target (entries path)
            if (empty? path) nil $ let
                p0 $ first path
              if-let
                target $ find entries
                  fn (entry)
                    = p0 $ :key entry
                if
                  = 1 $ count path
                  , target $ recur (:children target) (rest path)
                , nil
        |comp-parent-menu $ quote
          defcomp comp-parent-menu (selected docs on-select)
            list->
              {} $ :style ({})
              if
                > (count selected) 0
                ->
                  range $ dec (count selected)
                  map $ fn (idx)
                    let
                        sub-path $ slice selected 0 (inc idx)
                        target $ find-target docs sub-path
                      [] idx $ div
                        {}
                          :style $ {} (:cursor :pointer) (:font-style :italic)
                            :background-color $ hsl 180 90 94
                          :on-click $ fn (e d!) (on-select sub-path d!)
                        <> $ str "\"< "
                          or (:title target) "\"NOT FOUND"
                []
        |md $ quote
          def md $ new Remarkable
            js-object (:html false) (:breaks true)
              :highlight $ fn (code lang)
                if (= lang "\"cirru") (color/generate code)
                  .-value $ .!highlightAuto hljs code lang
        |comp-page-entries $ quote
          defcomp comp-page-entries (selected parent-path entries on-select)
            div
              {} $ :style
                {} (:min-width 240) (:max-width 320)
              list-> ({})
                -> entries $ map-indexed
                  fn (idx entry)
                    [] idx $ let
                        selected? $ = selected (:key entry)
                      div
                        {} $ :on-click
                          fn (e d!)
                            on-select
                              conj parent-path $ :key entry
                              , d!
                        div
                          {} (:class-name "\"doc-entry")
                            :style $ merge style-entry
                              if selected? $ {} (:background-color :white)
                                :border-left $ str "\"10px solid " (hsl 200 90 70)
                          <> $ :title entry
        |comp-doc-page $ quote
          defcomp comp-doc-page (target)
            if (some? target)
              div
                {} $ :style
                  merge ui/expand $ {} (:padding "\"8px 16px")
                    :background-color $ hsl 0 0 100 0.6
                div $ {}
                  :innerHTML $ .!render md (:content target)
              div
                {} $ :style
                  merge ui/expand $ {} (:padding "\"20px 16px")
                do $ <> "\"Empty"
                  {} (:font-family ui/font-fancy) (:font-style :italic)
                    :color $ hsl 0 0 80
        |comp-history-menu $ quote
          defcomp comp-history-menu (history on-select)
            list-> ({})
              -> history $ map-indexed
                fn (idx path)
                  [] idx $ let
                      target $ find-target docs path
                    div
                      {} (:class-name "\"doc-entry")
                        :style $ {} (:cursor :pointer) (:padding "\"0 8px") (:font-size 12)
                          :color $ hsl 0 0 60
                        :on-click $ fn (e d!) (on-select path d!)
                      <> $ :title target
        |next-path $ quote
          defn next-path (state path)
            -> state (assoc :selected path)
              update :history $ fn (xs)
                if (.includes? xs path) xs $ prepend
                  if
                    > (count xs) 3
                    butlast xs
                    , xs
                  , path
        |find-entries $ quote
          defn find-entries (entries path)
            if (empty? path) entries $ if-let
              target $ find-target entries path
              :children target
              do (js/console.warn "\"no entries found for" entries path) ([])
    |docs-workflow.schema $ {}
      :ns $ quote (ns docs-workflow.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
        |docs $ quote
          def docs $ []
            {} (:title "\"Guide") (:key :guide)
              :content $ load-doc "\"guide.md"
            {} (:title "\"Design") (:key :design)
              :content $ load-doc "\"design.md"
              :children $ []
                {} (:title "\"Guide") (:key :guide)
                  :content $ load-doc "\"guide.md"
                {} (:title "\"Design") (:key :design)
                  :content $ load-doc "\"design.md"
                {} (:title "\"Overview") (:key :overview)
                  :content $ load-doc "\"overview.md"
            {} (:title "\"About") (:key :about)
              :content $ load-doc "\"about.md"
        |load-doc $ quote
          defmacro load-doc (filename)
            read-file $ str "\"docs/" filename
    |docs-workflow.updater $ {}
      :ns $ quote
        ns docs-workflow.updater $ :require
          respo.cursor :refer $ update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case-default op
              do (println "\"unknown op:" op) store
              :states $ update-states store data
              :hydrate-storage data
    |docs-workflow.main $ {}
      :ns $ quote
        ns docs-workflow.main $ :require
          respo.core :refer $ render! clear-cache!
          docs-workflow.comp.container :refer $ comp-container
          docs-workflow.updater :refer $ updater
          docs-workflow.schema :as schema
          reel.util :refer $ listen-devtools!
          reel.core :refer $ reel-updater refresh-reel
          reel.schema :as reel-schema
          docs-workflow.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
          "\"highlight.js" :default hljs
          "\"highlight.js/lib/languages/bash" :default bash-lang
          "\"highlight.js/lib/languages/clojure" :default clojure-lang
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel schema/docs) dispatch!
        |persist-storage! $ quote
          defn persist-storage! () (js/console.log "\"persist")
            js/localStorage.setItem (:storage-key config/site)
              format-cirru-edn $ :store @*reel
        |mount-target $ quote
          def mount-target $ .!querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! () (.!registerLanguage hljs "\"clojure" clojure-lang) (.!registerLanguage hljs "\"bash" bash-lang)
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
            flipped js/setInterval 60000 persist-storage!
            ; let
                raw $ js/localStorage.getItem (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
    |docs-workflow.config $ {}
      :ns $ quote (ns docs-workflow.config)
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:storage-key "\"workflow")
