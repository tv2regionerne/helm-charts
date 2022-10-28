{{/*
Service name
*/}}
{{- define "bazo.newrelic.name" -}}
{{- include "bazo.fullname" . }}-newrelic
{{- end }}

{{/*
Common labels
*/}}
{{- define "bazo.newrelic.labels" -}}
helm.sh/chart: {{ include "bazo.chart" . }}
{{ include "bazo.newrelic.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels web
*/}}
{{- define "bazo.newrelic.selectorLabels" -}}
app.kubernetes.io/name: {{ include "bazo.newrelic.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}