image_url=$(kubectl -n tkg-system get packages grafana.tanzu.vmware.com.7.5.16+vmware.1-tkg.1 -o jsonpath='{.spec.template.spec.fetch[0].imgpkgBundle.image}')
imgpkg pull -b $image_url -o /tmp/grafana-package-7.5.16+vmware.1-tkg.1
cp /tmp/grafana-package-7.5.16+vmware.1-tkg.1/config/values.yaml grafana-data-values.yaml
