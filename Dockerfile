# Copyright The KubeDB Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM mongo:4.1.13

# Copy ssl-client-user to docker-entrypoint.d directory.
# xref: https://github.com/docker-library/mongo/issues/329#issuecomment-460858099
COPY 000-ssl-client-user.sh /docker-entrypoint-initdb.d/

ENV SSL_MODE ""
ENV CLUSTER_AUTH_MODE ""

# For starting mongodb container
# default entrypoint of parent mongo:4.1.13
# ENTRYPOINT ["docker-entrypoint.sh"]

# For starting bootstraper init container (for mongodb replicaset)
# ENTRYPOINT ["peer-finder"]
