image_url=$(kubectl -n tkg-system get packages prometheus.tanzu.vmware.com.2.37.0+vmware.1-tkg.1 -o jsonpath='{.spec.template.spec.fetch[0].imgpkgBundle.image}')
imgpkg pull -b $image_url -o /tmp/prometheus-package-2.37.0+vmware.1-tkg.1
cp /tmp/prometheus-package-2.37.0+vmware.1-tkg.1/config/values.yaml prometheus-data-values.yaml
