# Week 2 Notes

## `traceroute`
`traceroute` tracks the route a request takes to reach a desitnation. It shows the addresses of each hop along the way and the response times (latency) for each hop.

**Example:**
```bash
traceroute google.com
```

## `ss` / `netstat`

`ss` and `netstat` provides information about netowrk connections and local ports on the local machine. They show which ports are open, which services are listening, and active TCP/UDP connections. `ss` is faster and more modern than `netstat`.

**Example:**
```bash
ss -tuln
```

## `ip route`

`ip route` displays the system's routing table, which shows how network traffic is routed from your machine. It indicates the default gateway and paths used for different destinations.

**Example:**
```bash
ip route
```

## `curl` /  `wget`

`curl` and `wget` are tools for interacting with the web. `curl` is mainly used for making HTTP requests and working with APIs, while `wget` is used for downloading files over the web. Both tools allow you to fetch content from URLs.

**Example:**
```bash
curl https://example.com
```

```bash
wget https://example.com
```
