# These have a dependency order
CD_SERVICE_REPOS=(starter \
                  storer \
                  zipper \
                  differ \
                  repl_container_python \
                  runner_stateful \
                  runner_stateless \
                  runner_repl \
                  collector \
                  commander \
                  web \
                  nginx)


CD_MONITORING_REPOS=(prometheus grafana)

CYBER_DOJO_REPOS=("${CD_SERVICE_REPOS[@]}" "${CD_MONITORING_REPOS[@]}")
