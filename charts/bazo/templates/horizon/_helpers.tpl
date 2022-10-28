{{/*
Common labels
*/}}
{{- define "bazo.horizon.labels" -}}
helm.sh/chart: {{ include "bazo.chart" . }}
{{ include "bazo.horizon.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "bazo.horizon.selectorLabels" -}}
app.kubernetes.io/name: {{ include "bazo.name" . }}-horizon
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}