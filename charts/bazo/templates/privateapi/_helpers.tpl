{{/*
Service name
*/}}
{{- define "bazo.privateapi.name" -}}
{{- include "bazo.fullname" . }}-privateapi
{{- end }}

{{/*
PHP name
*/}}
{{- define "bazo.privateapi.php.name" -}}
{{- include "bazo.privateapi.name" . }}-php
{{- end }}

{{/*
Web name
*/}}
{{- define "bazo.privateapi.web.name" -}}
{{- include "bazo.privateapi.name" . }}-web
{{- end }}

{{/*
Common labels php
*/}}
{{- define "bazo.privateapi.labelsPHP" -}}
helm.sh/chart: {{ include "bazo.chart" . }}
{{ include "bazo.privateapi.selectorLabelsPHP" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels web
*/}}
{{- define "bazo.privateapi.labelsWeb" -}}
helm.sh/chart: {{ include "bazo.chart" . }}
{{ include "bazo.privateapi.selectorLabelsWeb" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels php
*/}}
{{- define "bazo.privateapi.selectorLabelsPHP" -}}
app.kubernetes.io/name: {{ include "bazo.privateapi.php.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Selector labels web
*/}}
{{- define "bazo.privateapi.selectorLabelsWeb" -}}
app.kubernetes.io/name: {{ include "bazo.privateapi.web.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}