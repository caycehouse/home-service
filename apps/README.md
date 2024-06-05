# apps

## dhcp-proxy

<https://github.com/poseidon/dnsmasq>

## gatus

<https://github.com/TwiN/gatus>

## netbootxyz

<https://github.com/netbootxyz/netboot.xyz>

## node-exporter

<https://github.com/prometheus/node_exporter>

## podman-exporter

<https://github.com/containers/prometheus-podman-exporter>

### podman-exporter configuration

1. Enable the `podman.socket` service

    ```sh
    sudo systemctl enable --now podman.socket
    ```

2. Start `podman-exporter`

    ```sh
    task start-podman-exporter
    ```

## traefik

<https://github.com/traefik/traefik>
