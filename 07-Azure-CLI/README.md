# ❄️ Challenge 7: Azure CLI - Storage Secrets ❄️

## ☁️ The Gnome Cloud Misconfiguration ☁️

Oh no! Someone in the Dosis Neighborhood left their Azure storage wide open! Time to use the Azure CLI to investigate cloud misconfigurations and find exposed secrets. Those gnomes are getting craftier!

---

## ❄️ The Mission ❄️

Use Azure CLI to discover misconfigured storage accounts and access exposed sensitive data.

---

## 🎄 Azure CLI Commands Used 🎄

### Check Current Account
```bash
az account show | less
```
Shows the currently authenticated Azure account.

### List Storage Accounts
```bash
az storage account list | less
```
Lists all storage accounts in the subscription.

### Show Storage Account Details
```bash
az storage account show --name neighborhood2 | less
```
Shows detailed configuration of a specific storage account.

### List Containers in Storage Account
```bash
az storage container list --account-name neighborhood2 --auth-mode login -o table
```
Lists all blob containers in a storage account.

### List Blobs in Container
```bash
az storage blob list --account-name neighborhood2 --container-name public --auth-mode login -o table
```
Lists all blobs (files) in a container.

### Download and View Blob
```bash
az storage blob download --account-name neighborhood2 --container-name public --name admin_credentials.txt --auth-mode login --file /dev/stdout | less
```
Downloads a blob and displays its contents.

---

## ❄️ The Vulnerability ❄️

### Misconfiguration Found: Public Blob Access

**Secure Configuration:**
```json
"allowBlobPublicAccess": false
```

**Insecure Configuration (neighborhood2):**
```json
"allowBlobPublicAccess": true
```

### Container Access Levels

| Container | Public Access | Status |
|-----------|---------------|--------|
| private | null | ✅ Secure |
| public | "Blob" | ❌ EXPOSED! |

### Exposed Files Found
- `admin_credentials.txt` - Admin credentials exposed! 🚨
- `network_config.json` - Network configuration exposed!
- Inventory documents

---

## 🎅 Victory! 🎅

We discovered the misconfigured storage account and accessed the exposed admin credentials! This demonstrates why proper cloud security configuration is critical.

---

## ❄️ Technical Summary ❄️

| Issue | Risk | Remediation |
|-------|------|-------------|
| `allowBlobPublicAccess: true` | Data exposure | Set to `false` |
| Container public access | Unauthorized access | Use private containers |
| Sensitive files in public storage | Credential theft | Move to secure storage |

---

## ❄️ Azure Storage Security Best Practices ❄️

1. **Disable public blob access** at the storage account level
2. **Use private containers** for sensitive data
3. **Enable Azure Defender** for storage
4. **Use managed identities** instead of storage keys
5. **Enable soft delete** for data recovery
6. **Monitor access logs** for suspicious activity
7. **Use Azure Private Link** for network isolation

---

## ❄️ Key Azure CLI Flags ❄️

| Flag | Description |
|------|-------------|
| `--auth-mode login` | Use Azure AD authentication |
| `-o table` | Output in table format |
| `-o json` | Output in JSON format |
| `--query` | JMESPath query for filtering |
| `| less` | Pipe to less for scrolling |

---

*The gnomes thought they could hide secrets in the cloud... but we found them!* 🎅❄️☁️🎄
