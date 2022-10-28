{{/*
Service name
*/}}
{{- define "bazo.admin.name" -}}
{{- include "bazo.fullname" . }}-admin
{{- end }}

{{/*
PHP name
*/}}
{{- define "bazo.admin.php.name" -}}
{{- include "bazo.admin.name" . }}-php
{{- end }}

{{/*
Web name
*/}}
{{- define "bazo.admin.web.name" -}}
{{- include "bazo.admin.name" . }}-web
{{- end }}

{{/*
Common labels php
*/}}
{{- define "bazo.admin.labelsPHP" -}}
helm.sh/chart: {{ include "bazo.chart" . }}
{{ include "bazo.admin.selectorLabelsPHP" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Common labels web
*/}}
{{- define "bazo.admin.labelsWeb" -}}
helm.sh/chart: {{ include "bazo.chart" . }}
{{ include "bazo.admin.selectorLabelsWeb" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels php
*/}}
{{- define "bazo.admin.selectorLabelsPHP" -}}
app.kubernetes.io/name: {{ include "bazo.admin.php.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Selector labels web
*/}}
{{- define "bazo.admin.selectorLabelsWeb" -}}
app.kubernetes.io/name: {{ include "bazo.admin.web.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}