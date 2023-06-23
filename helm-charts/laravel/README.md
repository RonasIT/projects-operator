# laravel

![Version: 1.3.4](https://img.shields.io/badge/Version-1.3.4-informational?style=flat-square)

## Installing the Chart

To install the chart with the release name `my-release`:

```console
$ helm repo add ronas https://ronasit.github.io/projects-operator/
$ helm install my-release ronas/laravel
```

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | mysql | 9.5.2 |
| https://charts.bitnami.com/bitnami | postgresql | 12.2.2 |
| https://charts.bitnami.com/bitnami | redis | 17.8.3 |
| https://helm.soketi.app | soketi | 1.0.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `3` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| autoscaling.targetMemoryUtilizationPercentage | int | `80` |  |
| cronjobs.concurrencyPolicy | string | `"Forbid"` |  |
| cronjobs.enabled | bool | `false` |  |
| cronjobs.resources.limits.cpu | string | `"45m"` |  |
| cronjobs.resources.limits.memory | string | `"100Mi"` |  |
| cronjobs.resources.requests.cpu | string | `"35m"` |  |
| cronjobs.resources.requests.memory | string | `"80Mi"` |  |
| cronjobs.restartPolicy | string | `"Never"` |  |
| cronjobs.schedule | string | `"*/1 * * * *"` |  |
| cronjobs.schedulers[0].cmd | string | `"php artisan schedule:run || true"` |  |
| cronjobs.schedulers[0].name | string | `"default"` |  |
| cronjobs.startingDeadlineSeconds | int | `200` |  |
| cronjobs.successfulJobsHistoryLimit | int | `1` |  |
| extraEnvVars | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"nginx"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations."cert-manager.io/cluster-issuer" | string | `"cert-manager"` |  |
| ingress.annotations."certmanager.k8s.io/cluster-issuer" | string | `"cert-manager"` |  |
| ingress.annotations."ingress.kubernetes.io/rewrite-target" | string | `"/"` |  |
| ingress.annotations."kubernetes.io/ingress.class" | string | `"nginx"` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `true` |  |
| ingress.host | string | `"laravel.ronas.cloud"` |  |
| ingress.hosts | object | `{}` |  |
| ingress.path | string | `"/"` |  |
| ingress.pathType | string | `"ImplementationSpecific"` |  |
| livenessProbe.enabled | bool | `true` |  |
| livenessProbe.path | string | `"/status"` |  |
| livenessProbe.port | string | `"http"` |  |
| migration.activeDeadlineSeconds | int | `180` |  |
| migration.cmd | string | `"/mnt/scripts/migration.sh"` |  |
| migration.enabled | bool | `true` |  |
| migration.resources.limits.cpu | string | `"45m"` |  |
| migration.resources.limits.memory | string | `"100Mi"` |  |
| migration.resources.requests.cpu | string | `"35m"` |  |
| migration.resources.requests.memory | string | `"80Mi"` |  |
| mysql.auth.database | string | `"mydb"` |  |
| mysql.auth.existingSecret | string | `"mysql-credentials"` |  |
| mysql.auth.username | string | `"myuser"` |  |
| mysql.enabled | bool | `false` |  |
| mysql.loadBalancer.enabled | bool | `false` |  |
| mysql.loadBalancer.internal | bool | `true` |  |
| mysql.primary.persistence.size | string | `"1Gi"` |  |
| mysql.primary.resources.limits.cpu | string | `"180m"` |  |
| mysql.primary.resources.limits.memory | string | `"256Mi"` |  |
| mysql.primary.resources.requests.cpu | string | `"150m"` |  |
| mysql.primary.resources.requests.memory | string | `"192Mi"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| postgresql.auth.database | string | `"pgdb"` |  |
| postgresql.auth.enablePostgresUser | bool | `false` |  |
| postgresql.auth.existingSecret | string | `"postgresql-credentials"` |  |
| postgresql.auth.username | string | `"pguser"` |  |
| postgresql.enabled | bool | `true` |  |
| postgresql.image.tag | string | `"14.7.0-debian-11-r10"` |  |
| postgresql.loadBalancer.enabled | bool | `false` |  |
| postgresql.loadBalancer.internal | bool | `true` |  |
| postgresql.primary.persistence.size | string | `"1Gi"` |  |
| postgresql.primary.resources.limits.cpu | string | `"180m"` |  |
| postgresql.primary.resources.limits.memory | string | `"90Mi"` |  |
| postgresql.primary.resources.requests.cpu | string | `"150m"` |  |
| postgresql.primary.resources.requests.memory | string | `"70Mi"` |  |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.path | string | `"/status"` |  |
| readinessProbe.port | string | `"http"` |  |
| redis.architecture | string | `"standalone"` |  |
| redis.auth.existingSecret | string | `"redis-credentials"` |  |
| redis.auth.existingSecretPasswordKey | string | `"password"` |  |
| redis.enabled | bool | `true` |  |
| redis.loadBalancer.enabled | bool | `false` |  |
| redis.loadBalancer.internal | bool | `true` |  |
| redis.master.persistence.size | string | `"1Gi"` |  |
| redis.master.resources.limits.cpu | string | `"54m"` |  |
| redis.master.resources.limits.memory | string | `"64Mi"` |  |
| redis.master.resources.requests.cpu | string | `"42m"` |  |
| redis.master.resources.requests.memory | string | `"32Mi"` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"90m"` |  |
| resources.limits.memory | string | `"200Mi"` |  |
| resources.requests.cpu | string | `"70m"` |  |
| resources.requests.memory | string | `"160Mi"` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| soketi.app.extraEnv[0].name | string | `"SOKETI_DEBUG"` |  |
| soketi.app.extraEnv[0].value | string | `"1"` |  |
| soketi.app.extraEnv[1].name | string | `"SOKETI_DEFAULT_APP_ID"` |  |
| soketi.app.extraEnv[1].valueFrom.fieldRef.fieldPath | string | `"metadata.namespace"` |  |
| soketi.app.extraEnv[2].name | string | `"SOKETI_DEFAULT_APP_KEY"` |  |
| soketi.app.extraEnv[2].valueFrom.fieldRef.fieldPath | string | `"metadata.namespace"` |  |
| soketi.app.extraEnv[3].name | string | `"SOKETI_DEFAULT_APP_SECRET"` |  |
| soketi.app.extraEnv[3].valueFrom.fieldRef.fieldPath | string | `"metadata.namespace"` |  |
| soketi.app.resources.limits.cpu | string | `"250m"` |  |
| soketi.app.resources.limits.memory | string | `"256Mi"` |  |
| soketi.app.resources.requests.cpu | string | `"100m"` |  |
| soketi.app.resources.requests.memory | string | `"128Mi"` |  |
| soketi.enabled | bool | `false` |  |
| soketi.service.port | int | `6001` |  |
| tolerations | list | `[]` |  |
| volumeMounts[0].mountPath | string | `"/mnt/gcs"` |  |
| volumeMounts[0].name | string | `"gcs"` |  |
| volumeMounts[0].readOnly | bool | `true` |  |
| volumes[0].name | string | `"gcs"` |  |
| volumes[0].secret.optional | bool | `true` |  |
| volumes[0].secret.secretName | string | `"gcs-key"` |  |
| workers.enabled | bool | `true` |  |
| workers.items | list | `[]` |  |
| workers.resources.limits.cpu | string | `"45m"` |  |
| workers.resources.limits.memory | string | `"100Mi"` |  |
| workers.resources.requests.cpu | string | `"35m"` |  |
| workers.resources.requests.memory | string | `"80Mi"` |  |
