typedef struct {
  const char *aap2_socket;
  const char *remote_eid;
  const char *address;
  const char *secret_name;
} charon_config;

charon_config *read_config(const char *filename);
