{{/* Chart-scoped label lines (no "labels:" key). Safe to pipe/indent with include. */}}
{{- define "mychart.labels" -}}
generator: helm
date: {{ now | htmlDate }}
chart: {{ .Chart.Name }}
version: {{ .Chart.Version }}
{{- end -}}

{{/* App info lines (key/value pairs) */}}
{{- define "mychart.app" -}}
app_name: {{ .Chart.Name }}
app_version: "{{ .Chart.Version }}"
{{- end -}}

{{/* Optional: a block-style variant that includes the "labels:" key.
     Use only with the `template` action (cannot be piped). */}}
{{- define "mychart.labelsBlock" -}}
labels:
  generator: helm
  date: {{ now | htmlDate }}
  chart: {{ .Chart.Name }}
  version: {{ .Chart.Version }}
{{- end -}}
