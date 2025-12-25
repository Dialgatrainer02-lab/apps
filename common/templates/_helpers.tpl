{{- define "lib.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "lib.labels" -}}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "test.valueOrRandom" -}}
{{- if eq . "__RANDOM__" -}}
{{ randAlphaNum 32 | quote }}
{{- else -}}
{{ . | quote }}
{{- end -}}
{{- end -}}