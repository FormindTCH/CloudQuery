# Utilisez une image de base (par exemple, Ubuntu)
FROM ghcr.io/cloudquery/cloudquery:3.25

# Ajoutez des instructions pour installer vos dépendances et votre application
COPY ./config.yml /config.yml

# Indiquez le point d'entrée de votre application (si applicable)
ENTRYPOINT ["/app/cloudquery", "sync", "/config.yml", "--cq-dir", "/cache/.cq"]