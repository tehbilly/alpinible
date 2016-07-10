### Alpinible

Obviously names and things can be changed. These are just a demonstration.

```bash
docker build -t alpinible .

# Run the default test
docker run --rm -v "$(pwd)/playbook:/playbook" alpinible

# Specify an inventory file. Every is relative to $(pwd)/playbook
docker run --rm -v "$(pwd)/playbook:/playbook" alpinible ansible-playbook -i inv/production

# Run a playbook manually
docker run --rm -v "$(pwd)/playbook:/playbook" alpinible ansible-playbook test-manual.yaml
```