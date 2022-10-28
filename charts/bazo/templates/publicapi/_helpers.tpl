{{/*
Service name
*/}}
{{- define "bazo.publicapi.name" -}}
{{- include "bazo.fullname" . }}-publicapi
{{- end }}

{{/*
PHP name
*/}}
{{- define "bazo.publicapi.php.name" -}}
{{- include "bazo.publicapi.name" . }}-php
{{- end }}

{{/*
Web name
*/}}
{{- define "bazo.publicapi.web.name" -}}
{{- include "bazo.publicapi.name" . }}-web
{{- end }}

{{/*
Common labels php
*/}}
{{- define "bazo.publicapi.labelsPHP" -}}
helm.sh/chart: {{ include "bazo.chart" . }}
{{ include "bazo.publicapi.selectorLabelsPHP" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels web
*/}}
{{- define "bazo.publicapi.labelsWeb" -}}
helm.sh/chart: {{ include "bazo.chart" . }}
{{ include "bazo.publicapi.selectorLabelsWeb" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels php
*/}}
{{- define "bazo.publicapi.selectorLabelsPHP" -}}
app.kubernetes.io/name: {{ include "bazo.publicapi.php.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Selector labels web
*/}}
{{- define "bazo.publicapi.selectorLabelsWeb" -}}
app.kubernetes.io/name: {{ include "bazo.publicapi.web.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}