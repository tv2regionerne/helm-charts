{{/*
Service name
*/}}
{{- define "bazo.cdn.name" -}}
{{- include "bazo.fullname" . }}-cdn
{{- end }}

{{/*
PHP name
*/}}
{{- define "bazo.cdn.php.name" -}}
{{- include "bazo.cdn.name" . }}-php
{{- end }}

{{/*
Web name
*/}}
{{- define "bazo.cdn.web.name" -}}
{{- include "bazo.cdn.name" . }}-web
{{- end }}

{{/*
Common labels php
*/}}
{{- define "bazo.cdn.labelsPHP" -}}
helm.sh/chart: {{ include "bazo.chart" . }}
{{ include "bazo.cdn.selectorLabelsPHP" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels web
*/}}
{{- define "bazo.cdn.labelsWeb" -}}
helm.sh/chart: {{ include "bazo.chart" . }}
{{ include "bazo.cdn.selectorLabelsWeb" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels php
*/}}
{{- define "bazo.cdn.selectorLabelsPHP" -}}
app.kubernetes.io/name: {{ include "bazo.cdn.php.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Selector labels web
*/}}
{{- define "bazo.cdn.selectorLabelsWeb" -}}
app.kubernetes.io/name: {{ include "bazo.cdn.web.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}