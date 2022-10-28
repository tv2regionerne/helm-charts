{{/*
Service name
*/}}
{{- define "bazo.cms.name" -}}
{{- include "bazo.fullname" . }}-cms
{{- end }}

{{/*
Common labels
*/}}
{{- define "bazo.cms.labels" -}}
helm.sh/chart: {{ include "bazo.chart" . }}
{{ include "bazo.cms.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels web
*/}}
{{- define "bazo.cms.selectorLabels" -}}
app.kubernetes.io/name: {{ include "bazo.cms.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}