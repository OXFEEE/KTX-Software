# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := libktx.es3
DEFS_Debug := \
	'-DKTX_OPENGL_ES3=1' \
	'-DKTX_USE_FUNCPTRS_FOR_VULKAN' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pedantic \
	-std=c99 \
	-Og \
	-g

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug :=

INCS_Debug := \
	-I$(srcdir)/include \
	-I$(srcdir)/other_include \
	-I$(VULKAN_SDK)/include

DEFS_Release := \
	'-DKTX_OPENGL_ES3=1' \
	'-DKTX_USE_FUNCPTRS_FOR_VULKAN' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-pedantic \
	-std=c99 \
	-O3

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release :=

INCS_Release := \
	-I$(srcdir)/include \
	-I$(srcdir)/other_include \
	-I$(VULKAN_SDK)/include

OBJS := \
	$(obj).target/$(TARGET)/lib/checkheader.o \
	$(obj).target/$(TARGET)/lib/dfdutils/createdfd.o \
	$(obj).target/$(TARGET)/lib/dfdutils/dfd4vkformat.o \
	$(obj).target/$(TARGET)/lib/dfdutils/interpretdfd.o \
	$(obj).target/$(TARGET)/lib/dfdutils/printdfd.o \
	$(obj).target/$(TARGET)/lib/errstr.o \
	$(obj).target/$(TARGET)/lib/etcdec.o \
	$(obj).target/$(TARGET)/lib/etcunpack.o \
	$(obj).target/$(TARGET)/lib/filestream.o \
	$(obj).target/$(TARGET)/lib/glloader.o \
	$(obj).target/$(TARGET)/lib/hashlist.o \
	$(obj).target/$(TARGET)/lib/info.o \
	$(obj).target/$(TARGET)/lib/memstream.o \
	$(obj).target/$(TARGET)/lib/swap.o \
	$(obj).target/$(TARGET)/lib/texture.o \
	$(obj).target/$(TARGET)/lib/texture1.o \
	$(obj).target/$(TARGET)/lib/texture2.o \
	$(obj).target/$(TARGET)/lib/vkformat_prohibited.o \
	$(obj).target/$(TARGET)/lib/vkformat_str.o \
	$(obj).target/$(TARGET)/lib/writer1.o \
	$(obj).target/$(TARGET)/lib/writer2.o \
	$(obj).target/$(TARGET)/lib/texture1_vvtbl.o \
	$(obj).target/$(TARGET)/lib/texture2_vvtbl.o \
	$(obj).target/$(TARGET)/lib/vkloader.o \
	$(obj).target/$(TARGET)/lib/vk_funcs.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/vulkan_headers.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cxx FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cxx FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cxx FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-g

LDFLAGS_Release :=

LIBS :=

$(obj).target/libktx.es3.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/libktx.es3.a: LIBS := $(LIBS)
$(obj).target/libktx.es3.a: TOOLSET := $(TOOLSET)
$(obj).target/libktx.es3.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).target/libktx.es3.a
# Add target alias
.PHONY: libktx.es3
libktx.es3: $(obj).target/libktx.es3.a

# Add target alias to "all" target.
.PHONY: all
all: libktx.es3

