
{}
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/ |docs-workflow/
  :entries $ {}
  :ir $ {} (:package |docs-workflow)
    :files $ {}
      |app.config $ {}
        :defs $ {}
          |dev? $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |j $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:text |dev?) (:type :leaf)
              |r $ {} (:at 1624469709435) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |5 $ {} (:at 1624469715390) (:by |rJG4IHzWf) (:text |=) (:type :leaf)
                  |D $ {} (:at 1624469714304) (:by |rJG4IHzWf) (:text "|\"dev") (:type :leaf)
                  |T $ {} (:at 1624469701389) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1624469706777) (:by |rJG4IHzWf) (:text |get-env) (:type :leaf)
                      |T $ {} (:at 1624469708397) (:by |rJG4IHzWf) (:text "|\"mode") (:type :leaf)
                      |b $ {} (:at 1658660202684) (:by |rJG4IHzWf) (:text "|\"release") (:type :leaf)
          |site $ {} (:at 1545933382603) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1518157345496) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1518157327696) (:by |root) (:text |site) (:type :leaf)
              |r $ {} (:at 1518157327696) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1518157346643) (:by |root) (:text |{}) (:type :leaf)
                  |yf $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:text "|\"workflow") (:type :leaf)
        :ns $ {} (:at 1527788237503) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1527788237503) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1527788237503) (:by |root) (:text |app.config) (:type :leaf)
        :proc $ {} (:at 1527788237503) (:by |root) (:type :expr)
          :data $ {}
      |app.main $ {}
        :defs $ {}
          |*reel $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610792986987) (:by |rJG4IHzWf) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |*reel) (:type :leaf)
              |r $ {} (:at 1507399777531) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1507399778895) (:by |root) (:text |->) (:type :leaf)
                  |T $ {} (:at 1507399776350) (:by |root) (:text |reel-schema/reel) (:type :leaf)
                  |j $ {} (:at 1507399779656) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399781682) (:by |root) (:text |assoc) (:type :leaf)
                      |j $ {} (:at 1507401405076) (:by |root) (:text |:base) (:type :leaf)
                      |r $ {} (:at 1507399787471) (:by |root) (:text |schema/store) (:type :leaf)
                  |r $ {} (:at 1507399779656) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399781682) (:by |root) (:text |assoc) (:type :leaf)
                      |j $ {} (:at 1507399793097) (:by |root) (:text |:store) (:type :leaf)
                      |r $ {} (:at 1507399787471) (:by |root) (:text |schema/store) (:type :leaf)
          |dispatch! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op-data) (:type :leaf)
              |t $ {} (:at 1547437686766) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1547437687530) (:by |root) (:text |when) (:type :leaf)
                  |L $ {} (:at 1584874661674) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1584874662518) (:by |rJG4IHzWf) (:text |and) (:type :leaf)
                      |T $ {} (:at 1547437691006) (:by |root) (:text |config/dev?) (:type :leaf)
                      |j $ {} (:at 1584874663522) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584874664551) (:by |rJG4IHzWf) (:text |not=) (:type :leaf)
                          |j $ {} (:at 1584874665829) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                          |r $ {} (:at 1584874671745) (:by |rJG4IHzWf) (:text |:states) (:type :leaf)
                  |T $ {} (:at 1518156274050) (:by |root) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1518156276516) (:by |root) (:text |println) (:type :leaf)
                      |r $ {} (:at 1547437698992) (:by |root) (:text "|\"Dispatch:") (:type :leaf)
                      |v $ {} (:at 1518156280471) (:by |root) (:text |op) (:type :leaf)
              |v $ {} (:at 1584780634192) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1507399899641) (:by |root) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1507399884621) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399887573) (:by |root) (:text |reel-updater) (:type :leaf)
                      |j $ {} (:at 1507399888500) (:by |root) (:text |updater) (:type :leaf)
                      |r $ {} (:at 1507399891576) (:by |root) (:text |@*reel) (:type :leaf)
                      |v $ {} (:at 1507399892687) (:by |root) (:text |op) (:type :leaf)
                      |x $ {} (:at 1507399894594) (:by |root) (:text |op-data) (:type :leaf)
          |main! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |main!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
              |s $ {} (:at 1648925706499) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1648925737355) (:by |rJG4IHzWf) (:text |register-languages!) (:type :leaf)
              |t $ {} (:at 1544874433785) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1544874434638) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                  |j $ {} (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1544874440404) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544874440190) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                      |j $ {} (:at 1544874446442) (:by |rJG4IHzWf) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release") (:type :leaf)
              |v $ {} (:at 1636914348413) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636914349962) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |j $ {} (:at 1636914351563) (:by |rJG4IHzWf) (:text |config/dev?) (:type :leaf)
                  |r $ {} (:at 1636914352112) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636914358071) (:by |rJG4IHzWf) (:text |load-console-formatter!) (:type :leaf)
              |x $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
              |y $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1507399915531) (:by |root) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:by |root) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612280609284) (:by |rJG4IHzWf) (:text |reel) (:type :leaf)
                          |j $ {} (:at 1612280610651) (:by |rJG4IHzWf) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
              |yD $ {} (:at 1507461684494) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1507461739167) (:by |root) (:text |listen-devtools!) (:type :leaf)
                  |j $ {} (:at 1624007376825) (:by |rJG4IHzWf) (:text ||k) (:type :leaf)
                  |r $ {} (:at 1507461693919) (:by |root) (:text |dispatch!) (:type :leaf)
              |yL $ {} (:at 1518157357847) (:by |root) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener) (:type :leaf)
                  |r $ {} (:at 1518157458163) (:by |root) (:text ||beforeunload) (:type :leaf)
                  |v $ {} (:at 1612344221583) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1612344222530) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612344223520) (:by |rJG4IHzWf) (:text |event) (:type :leaf)
                      |T $ {} (:at 1612344224533) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |yO $ {} (:at 1646150039456) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1646150045747) (:by |rJG4IHzWf) (:text |flipped) (:type :leaf)
                  |T $ {} (:at 1646150042154) (:by |rJG4IHzWf) (:text |js/setInterval) (:type :leaf)
                  |b $ {} (:at 1646150175987) (:by |rJG4IHzWf) (:text |60000) (:type :leaf)
                  |h $ {} (:at 1646150050057) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |yP $ {} (:at 1518157492640) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1648634362331) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                  |T $ {} (:at 1518157495438) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1518157495644) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1518157495826) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157496930) (:by |root) (:text |raw) (:type :leaf)
                          |j $ {} (:at 1518157497615) (:by |root) (:type :expr)
                            :data $ {}
                              |j $ {} (:at 1646150065132) (:by |rJG4IHzWf) (:text |js/localStorage.getItem) (:type :leaf)
                              |r $ {} (:at 1518157506313) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                                  |j $ {} (:at 1527788293499) (:by |root) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1518157514334) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1533919640958) (:by |rJG4IHzWf) (:text |when) (:type :leaf)
                      |j $ {} (:at 1518157515117) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157515786) (:by |root) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1518157516878) (:by |root) (:text |raw) (:type :leaf)
                      |r $ {} (:at 1518157521635) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157523818) (:by |root) (:text |dispatch!) (:type :leaf)
                          |j $ {} (:at 1518157669936) (:by |root) (:text |:hydrate-storage) (:type :leaf)
                          |r $ {} (:at 1518157527987) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624469412598) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                              |j $ {} (:at 1518157531240) (:by |root) (:text |raw) (:type :leaf)
              |yT $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |println) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text "||App started.") (:type :leaf)
          |mount-target $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |mount-target) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1624469553191) (:by |rJG4IHzWf) (:text |.!querySelector) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |js/document) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:by |root) (:text ||.app) (:type :leaf)
          |persist-storage! $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |n $ {} (:at 1646150052705) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |r $ {} (:at 1646150152124) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646150154932) (:by |rJG4IHzWf) (:text |js/console.log) (:type :leaf)
                  |b $ {} (:at 1646150157857) (:by |rJG4IHzWf) (:text "|\"persist") (:type :leaf)
              |v $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1646150150852) (:by |rJG4IHzWf) (:text |js/localStorage.setItem) (:type :leaf)
                  |r $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site) (:type :leaf)
                  |v $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1624469402829) (:by |rJG4IHzWf) (:text |format-cirru-edn) (:type :leaf)
                      |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store) (:type :leaf)
                          |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel) (:type :leaf)
          |reload! $ {} (:at 1626201152815) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |D $ {} (:at 1626201153853) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |L $ {} (:at 1626201157449) (:by |rJG4IHzWf) (:text |reload!) (:type :leaf)
              |P $ {} (:at 1626201163076) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |T $ {} (:at 1626201191606) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1626201192115) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |L $ {} (:at 1626201192626) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626201534497) (:by |rJG4IHzWf) (:text |nil?) (:type :leaf)
                      |j $ {} (:at 1626201194806) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                  |T $ {} (:at 1626201164538) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626201161775) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                      |j $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:text |:changes) (:type :leaf)
                      |r $ {} (:at 1507461699387) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507461702453) (:by |root) (:text |clear-cache!) (:type :leaf)
                      |v $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |:changes) (:type :leaf)
                          |v $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |reel) (:type :leaf)
                                  |j $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |prev) (:type :leaf)
                              |r $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
                      |x $ {} (:at 1507461704162) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507461706990) (:by |root) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1507461708965) (:by |root) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1507461710020) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507461730190) (:by |root) (:text |refresh-reel) (:type :leaf)
                              |j $ {} (:at 1507461719097) (:by |root) (:text |@*reel) (:type :leaf)
                              |r $ {} (:at 1507461721870) (:by |root) (:text |schema/store) (:type :leaf)
                              |v $ {} (:at 1507461722724) (:by |root) (:text |updater) (:type :leaf)
                      |y $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                          |j $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"ok~") (:type :leaf)
                          |r $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"Ok") (:type :leaf)
                  |j $ {} (:at 1626201203433) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626290831868) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                      |b $ {} (:at 1626290930377) (:by |rJG4IHzWf) (:text "|\"error") (:type :leaf)
                      |j $ {} (:at 1626201209903) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
          |render-app! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
              |v $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1624469436438) (:by |rJG4IHzWf) (:text |render!) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |mount-target) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1507400119272) (:by |root) (:text |@*reel) (:type :leaf)
                      |n $ {} (:at 1648585564758) (:by |rJG4IHzWf) (:text |schema/docs) (:type :leaf)
                  |v $ {} (:at 1623915174985) (:by |rJG4IHzWf) (:text |dispatch!) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.main) (:type :leaf)
            |r $ {} (:at 1499755354983) (:type :expr)
              :data $ {}
                |T $ {} (:at 1499755354983) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1499755354983) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |render!) (:type :leaf)
                        |r $ {} (:at 1499755354983) (:by |root) (:text |clear-cache!) (:type :leaf)
                |v $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1648704877144) (:by |rJG4IHzWf) (:text |docs-workflow.comp.container) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |comp-container) (:type :leaf)
                |y $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1508556737455) (:by |root) (:text |app.updater) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |updater) (:type :leaf)
                |yT $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1499755354983) (:by |root) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:by |root) (:text |schema) (:type :leaf)
                |yj $ {} (:at 1507399674125) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399678694) (:by |root) (:text |reel.util) (:type :leaf)
                    |r $ {} (:at 1507399680625) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507399680857) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1518156292092) (:by |root) (:text |listen-devtools!) (:type :leaf)
                |yr $ {} (:at 1507399683930) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399687162) (:by |root) (:text |reel.core) (:type :leaf)
                    |r $ {} (:at 1507399688098) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507399688322) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507399691010) (:by |root) (:text |reel-updater) (:type :leaf)
                        |q $ {} (:at 1518156288482) (:by |root) (:text |refresh-reel) (:type :leaf)
                |yv $ {} (:at 1507399715229) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399717674) (:by |root) (:text |reel.schema) (:type :leaf)
                    |r $ {} (:at 1507399755750) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1507399757678) (:by |root) (:text |reel-schema) (:type :leaf)
                |yy $ {} (:at 1527788302920) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1527788304925) (:by |root) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1527788306048) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788306884) (:by |root) (:text |config) (:type :leaf)
                |yyT $ {} (:at 1626201173819) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1626201180939) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors") (:type :leaf)
                    |j $ {} (:at 1626201183958) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1626201187310) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                |yyj $ {} (:at 1626290808117) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1626290810913) (:by |rJG4IHzWf) (:text "|\"bottom-tip") (:type :leaf)
                    |j $ {} (:at 1626290816153) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1626290825711) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                |z $ {} (:at 1648925723604) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1648925729195) (:by |rJG4IHzWf) (:text |docs-workflow.config) (:type :leaf)
                    |b $ {} (:at 1648925730045) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1648925730377) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1648925733622) (:by |rJG4IHzWf) (:text |register-languages!) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
      |app.schema $ {}
        :defs $ {}
          |docs $ {} (:at 1646491858255) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1646491860967) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |b $ {} (:at 1646491858255) (:by |rJG4IHzWf) (:text |docs) (:type :leaf)
              |h $ {} (:at 1646491858255) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646491862770) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                  |X $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text "|\"Overview") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648705070144) (:by |rJG4IHzWf) (:text |:overview) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text "|\"overview.md") (:type :leaf)
                      |o $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                  |b $ {} (:at 1646491863302) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1646491864313) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1646491864729) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1646491865823) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1646491897280) (:by |rJG4IHzWf) (:text "|\"Guide") (:type :leaf)
                      |e $ {} (:at 1646492677808) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1646492680045) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1646492682637) (:by |rJG4IHzWf) (:text |:guide) (:type :leaf)
                      |h $ {} (:at 1646491898428) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1646492030559) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1646492032037) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1646492033783) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |T $ {} (:at 1646491904553) (:by |rJG4IHzWf) (:text "|\"guide.md") (:type :leaf)
                      |l $ {} (:at 1648705001836) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705004268) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648705004593) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705004769) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                  |h $ {} (:at 1646491863302) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1646491864313) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1646491864729) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1646491865823) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648745642884) (:by |rJG4IHzWf) (:text "|\"APIs") (:type :leaf)
                      |e $ {} (:at 1646492677808) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1646492680045) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648745644198) (:by |rJG4IHzWf) (:text |:apis) (:type :leaf)
                      |h $ {} (:at 1646491898428) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1646492030559) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1646492032037) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1646492033783) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |T $ {} (:at 1648745646103) (:by |rJG4IHzWf) (:text "|\"apis.md") (:type :leaf)
                      |l $ {} (:at 1648705001836) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705004268) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |h $ {} (:at 1648745702866) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1648745703617) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648746346882) (:by |rJG4IHzWf) (:text "|\"and+") (:type :leaf)
                                  |h $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648746348998) (:by |rJG4IHzWf) (:text |:and-rule) (:type :leaf)
                                  |l $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746350990) (:by |rJG4IHzWf) (:text "|\"apis/and-rule.md") (:type :leaf)
                              |X $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648745734563) (:by |rJG4IHzWf) (:text "|\"any+") (:type :leaf)
                                  |h $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648745738182) (:by |rJG4IHzWf) (:text |:any-rule) (:type :leaf)
                                  |l $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746037282) (:by |rJG4IHzWf) (:text "|\"apis/any-rule.md") (:type :leaf)
                              |b $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648874575913) (:by |rJG4IHzWf) (:text "|\"bool+") (:type :leaf)
                                  |h $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648874577438) (:by |rJG4IHzWf) (:text |:bool-rule) (:type :leaf)
                                  |l $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648745639065) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648874580162) (:by |rJG4IHzWf) (:text "|\"apis/bool-rule.md") (:type :leaf)
                              |l $ {} (:at 1648746059191) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648746059191) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648746059191) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746059191) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648746101586) (:by |rJG4IHzWf) (:text "|\"is+") (:type :leaf)
                                  |h $ {} (:at 1648746059191) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746059191) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648746105719) (:by |rJG4IHzWf) (:text |:is-rule) (:type :leaf)
                                  |l $ {} (:at 1648746059191) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746059191) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648746059191) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648746059191) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746107976) (:by |rJG4IHzWf) (:text "|\"apis/is-rule.md") (:type :leaf)
                              |o $ {} (:at 1648746059839) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648746059839) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648746059839) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746059839) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648746121217) (:by |rJG4IHzWf) (:text "|\"keyword+") (:type :leaf)
                                  |h $ {} (:at 1648746059839) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746059839) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648746123103) (:by |rJG4IHzWf) (:text |:keyword-rule) (:type :leaf)
                                  |l $ {} (:at 1648746059839) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746059839) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648746059839) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648746059839) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746126319) (:by |rJG4IHzWf) (:text "|\"apis/keyword-rule.md") (:type :leaf)
                              |q $ {} (:at 1648746060777) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648746060777) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648746060777) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746060777) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648746128676) (:by |rJG4IHzWf) (:text "|\"list+") (:type :leaf)
                                  |h $ {} (:at 1648746060777) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746060777) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648746130475) (:by |rJG4IHzWf) (:text |:list-rule) (:type :leaf)
                                  |l $ {} (:at 1648746060777) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746060777) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648746060777) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648746060777) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746132479) (:by |rJG4IHzWf) (:text "|\"apis/list-rule.md") (:type :leaf)
                              |s $ {} (:at 1648746061720) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648746061720) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648746061720) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746061720) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648874583252) (:by |rJG4IHzWf) (:text "|\"dict+") (:type :leaf)
                                  |h $ {} (:at 1648746061720) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746061720) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648874584733) (:by |rJG4IHzWf) (:text |:dict-rule) (:type :leaf)
                                  |l $ {} (:at 1648746061720) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746061720) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648746061720) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648746061720) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648874587036) (:by |rJG4IHzWf) (:text "|\"apis/dict-rule.md") (:type :leaf)
                              |u $ {} (:at 1648746063808) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648746063808) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648746063808) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746063808) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648746150438) (:by |rJG4IHzWf) (:text "|\"not+") (:type :leaf)
                                  |h $ {} (:at 1648746063808) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746063808) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648746152309) (:by |rJG4IHzWf) (:text |:not-rule) (:type :leaf)
                                  |l $ {} (:at 1648746063808) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746063808) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648746063808) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648746063808) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746154139) (:by |rJG4IHzWf) (:text "|\"apis/not-rule.md") (:type :leaf)
                              |v $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648746165564) (:by |rJG4IHzWf) (:text "|\"number+") (:type :leaf)
                                  |h $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648746167640) (:by |rJG4IHzWf) (:text |:number-rule) (:type :leaf)
                                  |l $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746170266) (:by |rJG4IHzWf) (:text "|\"apis/number-rule.md") (:type :leaf)
                              |w $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648746842310) (:by |rJG4IHzWf) (:text "|\"optional+") (:type :leaf)
                                  |h $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648746843660) (:by |rJG4IHzWf) (:text |:optional-rule) (:type :leaf)
                                  |l $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746845521) (:by |rJG4IHzWf) (:text "|\"apis/optional-rule.md") (:type :leaf)
                              |x $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648746186789) (:by |rJG4IHzWf) (:text "|\"or+") (:type :leaf)
                                  |h $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648746188216) (:by |rJG4IHzWf) (:text |:or-rule) (:type :leaf)
                                  |l $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746191611) (:by |rJG4IHzWf) (:text "|\"apis/or-rule.md") (:type :leaf)
                              |y $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648746195099) (:by |rJG4IHzWf) (:text "|\"pick-type+") (:type :leaf)
                                  |h $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648746203210) (:by |rJG4IHzWf) (:text |:pick-type-rule) (:type :leaf)
                                  |l $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746206714) (:by |rJG4IHzWf) (:text "|\"apis/pick-type-rule.md") (:type :leaf)
                              |z $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648746218921) (:by |rJG4IHzWf) (:text "|\"record+") (:type :leaf)
                                  |h $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648746220539) (:by |rJG4IHzWf) (:text |:record-rule) (:type :leaf)
                                  |l $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746222794) (:by |rJG4IHzWf) (:text "|\"apis/record-rule.md") (:type :leaf)
                              |zD $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648746229290) (:by |rJG4IHzWf) (:text "|\"set+") (:type :leaf)
                                  |h $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648746232149) (:by |rJG4IHzWf) (:text |:set-rule) (:type :leaf)
                                  |l $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746233356) (:by |rJG4IHzWf) (:text "|\"apis/set-rule.md") (:type :leaf)
                              |zP $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648746236787) (:by |rJG4IHzWf) (:text "|\"string+") (:type :leaf)
                                  |h $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648746239608) (:by |rJG4IHzWf) (:text |:string-rule) (:type :leaf)
                                  |l $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746241508) (:by |rJG4IHzWf) (:text "|\"apis/string-rule.md") (:type :leaf)
                              |zY $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648746244830) (:by |rJG4IHzWf) (:text "|\"tuple+") (:type :leaf)
                                  |h $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648746246980) (:by |rJG4IHzWf) (:text |:tuple-rule) (:type :leaf)
                                  |l $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648746064487) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648746248953) (:by |rJG4IHzWf) (:text "|\"apis/tuple-rule.md") (:type :leaf)
                  |l $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648747323261) (:by |rJG4IHzWf) (:text "|\"Custom Method") (:type :leaf)
                      |h $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648747326660) (:by |rJG4IHzWf) (:text |:custom-method) (:type :leaf)
                      |l $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648747331306) (:by |rJG4IHzWf) (:text "|\"custom-method.md") (:type :leaf)
                      |o $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648747318235) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
          |load-doc $ {} (:at 1646492039492) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1646492046361) (:by |rJG4IHzWf) (:text |defmacro) (:type :leaf)
              |b $ {} (:at 1646492039492) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
              |h $ {} (:at 1646492039492) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646492043321) (:by |rJG4IHzWf) (:text |filename) (:type :leaf)
              |l $ {} (:at 1646492047430) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646492049914) (:by |rJG4IHzWf) (:text |read-file) (:type :leaf)
                  |b $ {} (:at 1646492050611) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1646492051158) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                      |b $ {} (:at 1646492054009) (:by |rJG4IHzWf) (:text "|\"docs/") (:type :leaf)
                      |h $ {} (:at 1646492057193) (:by |rJG4IHzWf) (:text |filename) (:type :leaf)
          |store $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |store) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1499755354983) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1584781004285) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1584781007287) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584781007486) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.schema) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
      |app.updater $ {}
        :defs $ {}
          |updater $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |updater) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |store) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |r $ {} (:at 1584874633844) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                  |v $ {} (:at 1519489491135) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1519489492110) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1627849233602) (:by |rJG4IHzWf) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |l $ {} (:at 1627849235240) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1627849235639) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                      |j $ {} (:at 1627849235881) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1627849236652) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                          |j $ {} (:at 1627849247340) (:by |rJG4IHzWf) (:text "|\"unknown op:") (:type :leaf)
                          |r $ {} (:at 1627849241947) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                      |r $ {} (:at 1627849245294) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                  |n $ {} (:at 1507399852251) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399855618) (:by |root) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1584874625235) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
                          |j $ {} (:at 1584874628374) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |r $ {} (:at 1584874632002) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                  |t $ {} (:at 1518157547521) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1518157657108) (:by |root) (:text |:hydrate-storage) (:type :leaf)
                      |j $ {} (:at 1584874637339) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.updater) (:type :leaf)
            |r $ {} (:at 1584874614885) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |j $ {} (:at 1584874616720) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor) (:type :leaf)
                    |r $ {} (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1584874621524) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
