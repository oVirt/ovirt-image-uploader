#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

include $(top_srcdir)/build/python.inc

MAINTAINERCLEANFILES = \
	$(srcdir)/Makefile.in \
	$(NULL)

EXTRA_DIST = \
	CIM_ResourceAllocationSettingData.xsd \
	CIM_VirtualSystemSettingData.xsd \
	common.xsd \
	ovf-environment.xsd \
	ovf-envelope.xsd \
	sample-ovf.xml \
	$(NULL)

ovfdir=$(ovirtimageuploaderlibdir)/ovf
dist_ovf_PYTHON = \
	__init__.py \
	ovfenvelope.py \
	$(NULL)

dist_noinst_PYTHON = \
	ovfenvelopetest.py \
	$(NULL)

all-local:
if PYTHON_SYNTAX_CHECK
	if [ -n "$(PYFLAKES)" ]; then \
		$(PYFLAKES) $(srcdir)/ovfenvelopetest.py; \
	fi
	if [ -n "$(PEP8)" ]; then \
		$(PEP8) $(srcdir)/ovfenvelopetest.py; \
	fi
endif

check-local:
	$(PYTHON) $(srcdir)/ovfenvelopetest.py

clean-local: \
	python-clean \
	$(NULL)
