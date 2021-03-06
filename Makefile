ifndef CODE_DIR
include Makefile.in
export CODE_DIR := $(CURDIR)
else
include $(CODE_DIR)/Makefile.in
endif

CC = $(strip $(CROSS_COMPILE))gcc
$(BLD_DIR) :
	mkdir -p $(BLD_DIR);

server:$(BLD_DIR) 
	$(CC) $(CFLAGS) src/md5sig_server.c -o $(BLD_DIR)/server
client:$(BLD_DIR) 
	$(CC) $(CFLAGS) src/md5sig_client.c -o $(BLD_DIR)/client
clean:
	rm -rf $(BLD_DIR)/*