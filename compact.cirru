
{} (:package |docs-workflow)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/ |docs-workflow/
  :entries $ {}
  :files $ {}
    |app.config $ {}
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ quote
          def site $ {} (:storage-key "\"workflow")
      :ns $ quote (ns app.config)
    |app.main $ {}
      :defs $ {}
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |main! $ quote
          defn main! () (register-languages!)
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
        |mount-target $ quote
          def mount-target $ .!querySelector js/document |.app
        |persist-storage! $ quote
          defn persist-storage! () (js/console.log "\"persist")
            js/localStorage.setItem (:storage-key config/site)
              format-cirru-edn $ :store @*reel
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel schema/docs) dispatch!
      :ns $ quote
        ns app.main $ :require
          respo.core :refer $ render! clear-cache!
          docs-workflow.comp.container :refer $ comp-container
          app.updater :refer $ updater
          app.schema :as schema
          reel.util :refer $ listen-devtools!
          reel.core :refer $ reel-updater refresh-reel
          reel.schema :as reel-schema
          app.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
          docs-workflow.config :refer $ register-languages!
    |app.schema $ {}
      :defs $ {}
        |docs $ quote
          def docs $ []
            {} (:title "\"Overview") (:key :overview)
              :content $ load-doc "\"overview.md"
              :children $ []
            {} (:title "\"Guide") (:key :guide)
              :content $ load-doc "\"guide.md"
              :children $ []
            {} (:title "\"APIs") (:key :apis)
              :content $ load-doc "\"apis.md"
              :children $ []
                {} (:title "\"and+") (:key :and-rule)
                  :content $ load-doc "\"apis/and-rule.md"
                {} (:title "\"any+") (:key :any-rule)
                  :content $ load-doc "\"apis/any-rule.md"
                {} (:title "\"bool+") (:key :bool-rule)
                  :content $ load-doc "\"apis/bool-rule.md"
                {} (:title "\"is+") (:key :is-rule)
                  :content $ load-doc "\"apis/is-rule.md"
                {} (:title "\"keyword+") (:key :keyword-rule)
                  :content $ load-doc "\"apis/keyword-rule.md"
                {} (:title "\"list+") (:key :list-rule)
                  :content $ load-doc "\"apis/list-rule.md"
                {} (:title "\"dict+") (:key :dict-rule)
                  :content $ load-doc "\"apis/dict-rule.md"
                {} (:title "\"not+") (:key :not-rule)
                  :content $ load-doc "\"apis/not-rule.md"
                {} (:title "\"number+") (:key :number-rule)
                  :content $ load-doc "\"apis/number-rule.md"
                {} (:title "\"optional+") (:key :optional-rule)
                  :content $ load-doc "\"apis/optional-rule.md"
                {} (:title "\"or+") (:key :or-rule)
                  :content $ load-doc "\"apis/or-rule.md"
                {} (:title "\"pick-type+") (:key :pick-type-rule)
                  :content $ load-doc "\"apis/pick-type-rule.md"
                {} (:title "\"record+") (:key :record-rule)
                  :content $ load-doc "\"apis/record-rule.md"
                {} (:title "\"set+") (:key :set-rule)
                  :content $ load-doc "\"apis/set-rule.md"
                {} (:title "\"string+") (:key :string-rule)
                  :content $ load-doc "\"apis/string-rule.md"
                {} (:title "\"tuple+") (:key :tuple-rule)
                  :content $ load-doc "\"apis/tuple-rule.md"
            {} (:title "\"Custom Method") (:key :custom-method)
              :content $ load-doc "\"custom-method.md"
              :children $ []
        |load-doc $ quote
          defmacro load-doc (filename)
            read-file $ str "\"docs/" filename
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
      :ns $ quote (ns app.schema)
    |app.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case-default op
              do (println "\"unknown op:" op) store
              :states $ update-states store data
              :hydrate-storage data
      :ns $ quote
        ns app.updater $ :require
          respo.cursor :refer $ update-states
