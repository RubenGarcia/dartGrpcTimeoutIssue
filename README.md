# dartGrpcTimeoutIssue
Code related to https://github.com/grpc/grpc-dart/issues/688

# Procedure
- Run server on one phone
- Run client on another phone in the same network
- Copy IP of server under "Remote IP" on client
- Click on Start
- Repeat procedure a few times until the error shows

# Example output

Started 192.168.178.37, timeout: 50
GRPC error: code 4, codename DEADLINE_EXCEEDED, message Deadline exceeded
GRPC error: code 4, codename DEADLINE_EXCEEDED, message Deadline exceeded
GRPC error: code 4, codename DEADLINE_EXCEEDED, message Deadline exceeded
GRPC error: code 2, codename UNKNOWN, message HTTP/2 error: Connection error: Connection is being forcefully terminated. (errorCode: 1)
GRPC error: code 4, codename DEADLINE_EXCEEDED, message Deadline exceeded
