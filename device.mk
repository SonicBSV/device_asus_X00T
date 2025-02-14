PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE:=true
PRODUCT_SHIPPING_API_LEVEL := $(SHIPPING_API_LEVEL)
SHIPPING_API_LEVEL :=28
BOARD_DYNAMIC_PARTITION_ENABLE := false
TARGET_DISABLE_DASH := true

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi

# default is nosdcard, S/W button enabled in resource
PRODUCT_CHARACTERISTICS := nosdcard

# Enable product partition
PRODUCT_BUILD_PRODUCT_IMAGE := false

# Enable System_ext
PRODUCT_BUILD_SYSTEM_EXT_IMAGE := false

# Enable updating of APEXes
TARGET_SUPPORTS_UPDATABLE_APEX := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product-if-exists, vendor/prebuilts/config/apex.mk)

# skip boot jars check
SKIP_BOOT_JARS_CHECK := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.ambient_temperature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.ambient_temperature.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.hifi_sensors.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.hifi_sensors.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.relative_humidity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.relative_humidity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.euicc.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level-2019-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# ADB Debug
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.logd.logpersistd=logcatd \
    persist.service.adb.enable=1 \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1 

# Atrace
PRODUCT_PACKAGES += \
    android.hardware.atrace@1.0-service

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    antradio_app

# AR CONFIG
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/android.hardware.camera.ar.xml:vendor/etc/permissions/android.hardware.camera.ar.xml

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio.common@2.0-util \
    android.hardware.audio.effect@2.0 \
    android.hardware.audio@2.0 \
    android.hardware.soundtrigger@2.1-impl \
    android.hardware.audio@4.0 \
    android.hardware.audio.common@4.0 \
    android.hardware.audio.common@4.0-util \
    android.hardware.audio@4.0-impl \
    android.hardware.audio.effect@4.0 \
    android.hardware.audio.effect@4.0-impl \
    android.hardware.audio@5.0 \
    android.hardware.audio.common@5.0 \
    android.hardware.audio.common@5.0-util \
    android.hardware.audio@5.0-impl \
    android.hardware.audio.effect@5.0 \
    android.hardware.audio.effect@5.0-impl \
    android.hardware.audio@6.0 \
    android.hardware.audio.common@6.0 \
    android.hardware.audio.common@6.0-util \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0 \
    android.hardware.audio.effect@6.0-impl \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default \
    audio.primary.sdm660 \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libwebrtc_audio_preprocessing \
    libvolumelistener \
    libaudio-resampler \
    libalsautils \
    libautohal \
    libavservices_minijail.vendor \
    tinycap \
    tinyplay \
    tinypcminfo \
    tinymix \
    libhfp:32 \
    libsndmonitor:32 \
    libspkrprot:32 \
    liba2dpoffload \
    libcirrusspkrprot \
    libcomprcapture \
    libexthwplugin \
    libssrec \
    libvorbisidec \
    libbatterylistener
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_configs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_configs.xml \
    $(LOCAL_PATH)/configs/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(LOCAL_PATH)/configs/audio/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml

# Reduce client buffer size for fast audio output tracks
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1

# Low latency audio buffer size in frames
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio_hal.period_size=192

##fluencetype can be "fluence" or "fluencepro" or "none"
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.audio.sdk.fluencetype=fluence \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true

#disable tunnel encoding
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.tunnel.encode=false

#Disable RAS Feature by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.ras.enabled=false

#Buffer size in kbytes for compress offload playback
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.buffer.size.kb=64

#Minimum duration for offload playback in secs
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.min.duration.secs=30

#Enable offload audio video playback by default
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.video=true

#Enable audio track offload by default
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.track.enable=true

#Enable music through deep buffer
PRODUCT_PROPERTY_OVERRIDES += \
    audio.deep_buffer.media=true

#enable voice path for PCM VoIP by default
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.voice.path.for.pcm.voip=true

#Enable multi channel aac through offload
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.multiaac.enable=true

#Enable DS2, Hardbypass feature for Dolby
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false

#Disable Multiple offload sesison
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.multiple.enabled=false

#Disable Compress passthrough playback
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.passthrough=false

#Disable surround sound recording
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.audio.sdk.ssr=false

#enable dsp gapless mode by default
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.offload.gapless.enabled=true

#enable pbe effects
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.safx.pbe.enabled=false

#parser input buffer size(256kb) in byte stream mode
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.parser.ip.buffer.size=262144

#flac sw decoder 24 bit decode capability
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.flac.sw.decoder.24bit=true

#timeout crash duration set to 20sec before system is ready.
#timeout duration updates to default timeout of 5sec once the system is ready.
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.hal.boot.timeout.ms=20000

#split a2dp DSP supported encoder list
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxhd-aac

# A2DP offload support
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.a2dp_offload.supported=true

# Disable A2DP offload
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bluetooth.a2dp_offload.disabled=false

# A2DP offload DSP supported encoder list
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bluetooth.a2dp_offload.cap=sbc-aac-aptx-aptxhd-ldac

#enable software decoders for ALAC and APE
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.use.sw.alac.decoder=true
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.use.sw.ape.decoder=true

#enable hw aac encoder by default
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.hw.aac.encoder=true

#Enable HIFI audio support for internal codec
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.hifi.int_codec=true

#Set AudioFlinger client heap size
PRODUCT_PROPERTY_OVERRIDES += \
    ro.af.client_heap_size_kbyte=7168

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.hw.binder.size_kbyte=1024

#enable headset calibration
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.volume.headset.gain.depcal=true

#enable AAC frame ctl for A2DP sinks
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bt.aac_frm_ctl.enabled=true

#Set speaker protection cal tx path sampling rate to 48k
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.spkr_prot.tx.sampling_rate=48000

#add dynamic feature flags here
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.feature.a2dp_offload.enable=true \
vendor.audio.feature.afe_proxy.enable=true \
vendor.audio.feature.anc_headset.enable=true \
vendor.audio.feature.battery_listener.enable=false \
vendor.audio.feature.compr_cap.enable=false \
vendor.audio.feature.compress_in.enable=false \
vendor.audio.feature.compress_meta_data.enable=false \
vendor.audio.feature.compr_voip.enable=true \
vendor.audio.feature.concurrent_capture.enable=false \
vendor.audio.feature.custom_stereo.enable=true \
vendor.audio.feature.display_port.enable=true \
vendor.audio.feature.dsm_feedback.enable=false \
vendor.audio.feature.dynamic_ecns.enable=false \
vendor.audio.feature.ext_hw_plugin.enable=false \
vendor.audio.feature.external_dsp.enable=false \
vendor.audio.feature.external_speaker.enable=false \
vendor.audio.feature.external_speaker_tfa.enable=false \
vendor.audio.feature.fluence.enable=true \
vendor.audio.feature.fm.enable=true \
vendor.audio.feature.hdmi_edid.enable=true \
vendor.audio.feature.hdmi_passthrough.enable=true \
vendor.audio.feature.hfp.enable=true \
vendor.audio.feature.hifi_audio.enable=true \
vendor.audio.feature.hwdep_cal.enable=false \
vendor.audio.feature.incall_music.enable=true \
vendor.audio.feature.multi_voice_session.enable=true \
vendor.audio.feature.keep_alive.enable=false \
vendor.audio.feature.kpi_optimize.enable=true \
vendor.audio.feature.maxx_audio.enable=false \
vendor.audio.feature.ras.enable=true \
vendor.audio.feature.record_play_concurency.enable=false \
vendor.audio.feature.src_trkn.enable=true \
vendor.audio.feature.spkr_prot.enable=true \
vendor.audio.feature.ssrec.enable=true \
vendor.audio.feature.usb_offload.enable=true \
vendor.audio.feature.usb_offload_burst_mode.enable=false \
vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
vendor.audio.feature.deepbuffer_as_primary.enable=false \
vendor.audio.feature.vbat.enable=true \
vendor.audio.feature.wsa.enable=false \
vendor.audio.feature.audiozoom.enable=false \
vendor.audio.feature.snd_mon.enable=true

# ASUS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.asus.project.name=ZB601KL \
    ro.oem_unlock_supported=1 \
    ro.vendor.manufacturer.product.name=zb601kl_m1

# Automotive
PRODUCT_PACKAGES += \
    android.hardware.automotive.vehicle@2.0-manager-lib

# Biometrics
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.asus_X00T \
    android.hardware.biometrics.fingerprint@2.1

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# Bluetooth
PRODUCT_PACKAGES += \
    com.qualcomm.qti.bluetooth_audio@1.0 \
    liba2dpoffload \
    libbtconfigstore \
    libbt-hidlclient \
    libbt-logClient \
    android.hardware.bluetooth@1.1 \
    android.hardware.bluetooth.a2dp@1.0 \
    android.hardware.bluetooth.audio@2.0 \
    vendor.qti.hardware.btconfigstore@1.0 \
    vendor.qti.hardware.btconfigstore@2.0 \
    android.hardware.bluetooth@1.0 \
    android.hardware.bluetooth.audio@2.0-impl \
    vendor.qti.hardware.bluetooth_audio@2.0 \
    vendor.qti.hardware.bluetooth_audio@2.0.vendor \
    vendor.qti.hardware.btconfigstore@1.0.vendor \
    vendor.qti.hardware.btconfigstore@2.0.vendor

PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/commonsys/packages/apps/Bluetooth
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/bt_profile.conf:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/bluetooth/bt_profile.conf \
    $(LOCAL_PATH)/configs/bluetooth/interop_database.conf:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/bluetooth/interop_database.conf 
    
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qcom.bluetooth.soc=cherokee \
    persist.vendor.qcom.bluetooth.soc=cherokee \
    persist.vendor.qcom.bluetooth.scram.enabled=false \
    persist.vendor.qcom.bluetooth.enable.splita2dp=true \
    persist.vendor.bluetooth.modem_nv_support=true \
    ro.vendor.bluetooth.wipower=false
        
# Boot animation
    TARGET_SCREEN_HEIGHT := 2160
    TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    android.hardware.camera.provider@2.4 \
    android.frameworks.cameraservice.common@2.0 \
    android.frameworks.cameraservice.device@2.0 \
    android.frameworks.cameraservice.service@2.0 \
    camera.device@3.2-impl \
    camera.sdm660
    
#    Snap
   
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,org.lineageos.snap \
    vendor.camera.hal1.packagelist=com.whatsapp,com.skype.raider,com.google.android.talk \
    vendor.camera.hal1.packagelist2=com.facebook.katana,com.instagram.android,com.snapchat.android \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.mpo.disabled=1 \
    vendor.vidc.enc.disable.pq=true \
    vendor.vidc.dec.enable.downscalar=0

# Codec2 modules
PRODUCT_PACKAGES += \
    libsfplugin_ccodec \
    libcodec2_vndk

PRODUCT_PROPERTY_OVERRIDES += \
    debug.media.codec2=2

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-service

# Dalvik overrides
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# Double tap (D2TW)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.asus.dclick=1 \
    persist.asus.gesture.type=1000000

# Doze
PRODUCT_PACKAGES += \
    AsusDoze

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    vendor.display.config@1.0.vendor \
    vendor.display.config@2.0 \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    hwcomposer.sdm660 \
    gralloc.sdm660 \
    memtrack.sdm660 \
    libqdMetaData \
    libqdMetaData.system \
    libdisplayconfig \
    libhwc2on1adapter \
    libhwc2onfbadapter \
    libgui_vendor:32 \
    liboverlay \
    libvulkan \
    libtinyxml \
    libgenlock
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=420 \
    ro.hardware.vulkan=adreno \
    ro.hardware.egl=adreno

# DPM
PRODUCT_PACKAGES += \
    persist.vendor.dpmhalservice.enable=1
    
# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.3-service.clearkey
    
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Enable all system restart_level to relative
#PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ssr.restart_level=ALL_ENABLE

# Exclude TOF sensor and vibrator from InputManager
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/excluded-input-devices.xml:$(TARGET_COPY_OUT_VENDOR)/etc/excluded-input-devices.xml

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio \
    android.hardware.broadcastradio@1.0-impl

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.hw.fm.init=0

# Freeform Multiwindow
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.freeform_window_management.xml

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# GPS / Location
PRODUCT_PACKAGES += \
    libcurl \
    libsensorndkbridge 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/apdr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/apdr.conf \
    $(LOCAL_PATH)/configs/gps/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(LOCAL_PATH)/configs/gps/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(LOCAL_PATH)/configs/gps/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(LOCAL_PATH)/configs/gps/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \
    $(LOCAL_PATH)/configs/gps/xtwifi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/xtwifi.conf \
    $(LOCAL_PATH)/configs/gps/gnss_antenna_info.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gnss_antenna_info.conf
    
# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610
    
# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    android.hardware.health@2.1-impl.recovery

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0.vendor \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system_ext \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor
    
# IMS
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml

HIDL_WRAPPER := qti-telephony-hidl-wrapper
HIDL_WRAPPER += qti_telephony_hidl_wrapper.xml

QTI_TELEPHONY_UTILS := qti-telephony-utils
QTI_TELEPHONY_UTILS += qti_telephony_utils.xml

PRODUCT_PACKAGES += $(HIDL_WRAPPER)
PRODUCT_PACKAGES += $(QTI_TELEPHONY_UTILS)

PRODUCT_PACKAGES += libvndfwk_detect_jni.qti
PRODUCT_PACKAGES += libqti_vndfwk_detect
PRODUCT_PACKAGES += libvndfwk_detect_jni.qti.vendor
PRODUCT_PACKAGES += libqti_vndfwk_detect.vendor
    
PRODUCT_PROPERTY_OVERRIDES += \
    persist.ims.disableADBLogs=1 \
    persist.ims.disableDebugLogs=1 \
    persist.ims.disableQXDMLogs=1 \
    persist.ims.disableIMSLogs=1

# IPA Manager
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml \
    libipanat \
    liboffloadhal

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf 

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/gxfp_input.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gxfp_input.kl \
    $(LOCAL_PATH)/configs/keylayout/cdfinger_input.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/cdfinger_input.kl
    
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.hw.mainkeys=0

# Keymaster
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.X00T

# Manifest replacement for non NFC variant
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/bin/device_check.sh:install/bin/device_check.sh

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml
 
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.vidc.enc.disable.pq=true
 
# Media Extensions
PRODUCT_PACKAGES += \
    libstagefright_softomx.vendor \
    libavmediaserviceextensions \
    libmediametrics \
    libc2dcolorconvert \
    libhypv_intercept \
    libopus \
    libmediaplayerservice \
    libregistermsext \
    mediametrics

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true

# Misc
PRODUCT_PACKAGES += \
    libtextclassifier \
    libtextclassifier_hash \
    libtflite \
    libbrillo-binder:64 \
    libbrillo-stream:64 \
    libbrillo:64 \
    libbrotli:64 \
    libyuv

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.control_privapp_permissions=enforce \
    persist.vendor.qcomsysd.enabled=1

# Netutils
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0 \
    libandroid_net \
    netutils-wrapper-1.0

# NetFlix
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q660-13149-1

# NFC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    com.android.nfc_extras \
    NfcNci \
    Tag 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.nfc_nci=nqx.default

# NFC - Secure Element
PRODUCT_PACKAGES += \
    android.hardware.secure_element@1.2 \
    SecureElement

# OMX
PRODUCT_PACKAGES += \
    libOmxCore \
    libmm-omxcore \
    libOmxAacEnc:32 \
    libOmxAmrEnc:32 \
    libOmxEvrcEnc:32 \
    libOmxG711Enc:32 \
    libOmxQcelp13Enc:32 \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    libstagefright_soft_flacdec 



PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0

# ONS
PRODUCT_PACKAGES += \
    ONS

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Play store
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase.ms=android-asus-tpin \
    ro.com.google.rlzbrandcode=ASUP \
    ro.com.google.rlz_ap_whitelist=y0,y5,y6,y7,y9

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti  

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.power.pasr.enabled=true

# Prebuilts
PRODUCT_PACKAGES += \
    GoogleCameraGo

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-vendorcompat \
    libprotobuf-cpp-lite-vendorcompat

# Pre-opt SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Ramdisk
PRODUCT_PACKAGES += \
    init.btmac.sh \
    battery-oem-cls.sh \
    init.class_main.sh \
    init.qcom.post_boot.sh \
    init.qcom.sensors.sh \
    init.qcom.early_boot.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.ims.sh \
    init.qti.fm.sh \
    init.qti.fm.rc \
    init.baseband.sh \
    init.fixgpay.sh \
    emmc_prop_init.sh \
    vold.fstab \
    fstab.qcom \
    init.safailnet.rc \
    init.msm.usb.configfs.rc \
    init.recovery.qcom.rc \
    init.qcom.rc \
    init.target.rc \
    init.amt.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_X00TD

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl    

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.4 \
    android.hardware.radio.config@1.1 \
    android.hardware.radio.deprecated@1.0 \
    libxml2

PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.radio.multisim.config=dsds \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.qti.telephony.vt_cam_interface=1 \
    persist.sys.fflag.override.settings_network_and_internet_v2=true \
    ro.carrier=unknown \
    ro.com.android.dataroaming=false \
    ro.ril.ecclist=112,911 \
    ro.telephony.use_old_mnc_mcc_format=true \
    ro.telephony.iwlan_operation_mode=legacy \
    persist.vendor.radio.procedure_bytes=SKIP \
    persist.vendor.radio.aosp_usr_pref_sel=true \
    persist.vendor.radio.flexmap_type=none 

# SD Card
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=1

# QCOM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-android.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-android.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-system_ext.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-system_ext.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-platform2.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-platform2.xml

# QMI
PRODUCT_PACKAGES += \
    tcmiface \
    libjson

#PRODUCT_BOOT_JARS += \
    tcmiface
    
# QNS
PRODUCT_PACKAGES += \
    libstdc++.vendor

# QTI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# QC framework value-adds
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.va_aosp.support=1

PRODUCT_ODM_PROPERTIES += \
    ro.vendor.qti.va_odm.support=1

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sdk.sensors.gestures=false \
    ro.vendor.qti.sensors.dev_ori=true \
    ro.vendor.qti.sensors.pmd=true \
    ro.vendor.qti.sensors.sta_detect=true \
    ro.vendor.qti.sensors.mot_detect=true \
    ro.vendor.qti.sensors.facing=false \
    ro.vendor.qti.sensors.cmc=false

# SurfaceFlinger
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000 \
    ro.surface_flinger.set_display_power_timer_ms=10000 \
    ro.surface_flinger.set_touch_timer_ms=5000 \
    ro.surface_flinger.set_idle_timer_ms=9000

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.disable_backpressure=1 \
    debug.sf.early_phase_offset_ns=1500000 \
    debug.sf.early_app_phase_offset_ns=1500000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000 \
    debug.sf.enable_gl_backpressure=1

# SQL
PRODUCT_PACKAGES += \
    sqlite3

# Shutdown
PRODUCT_PROPERTY_OVERRIDES += \
    sys.vendor.shutdown.waittime=500

# System prop for UBWC
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.video.disable.ubwc=1

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \
    services-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# TextClassifier smart selection model files
PRODUCT_PACKAGES += \
    textclassifier.bundle1 \
    textclassifier.ar.model \
    textclassifier.de.model \
    textclassifier.en.model \
    textclassifier.es.model \
    textclassifier.fr.model \
    textclassifier.it.model \
    textclassifier.nl.model \
    textclassifier.pl.model \
    textclassifier.pt.model \
    textclassifier.ru.model \
    textclassifier.tr.model \
    textclassifier.zh.model \
    textclassifier.zh-Hant.model

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl:64 \
    android.hardware.thermal@1.0-service

# Touchscreen
PRODUCT_PACKAGES += \
    libtinyxml2

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.X00T
    
# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service \
    android.hardware.vibrator@1.3

#vendor prop to disable advanced network scanning
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.enableadvancedscan=false

# Vendor seccomp policy files for media components:
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp_policy/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp_policy/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/seccomp_policy/configstore@1.1.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/configstore@1.1.policy \
    $(LOCAL_PATH)/seccomp_policy/atfwd@2.0.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/atfwd@2.0.policy \
    $(LOCAL_PATH)/seccomp_policy/imsrtp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/imsrtp.policy \
    $(LOCAL_PATH)/seccomp_policy/qti-systemd.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/qti-systemd.policy \
    $(LOCAL_PATH)/seccomp_policy/vendor.qti.hardware.dsp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/vendor.qti.hardware.dsp.policy

# VNDK-SP:
PRODUCT_PACKAGES += \
    vndk_package

# VR
PRODUCT_PACKAGES += \
    android.hardware.vr@1.0-impl \
    android.hardware.vr@1.0-service \
    vr.sdm660

# WFD
PRODUCT_PACKAGES += \
    libnl \
    libstagefright_enc_common

PRODUCT_BOOT_JARS += \
    WfdCommon

# whitelisted app
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml 

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    hostapd \
    hostapd_cli \
    libwifi-hal-qcom \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf  

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/aoa_cldb_falcon.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/aoa_cldb_falcon.bin \
    $(LOCAL_PATH)/configs/wifi/aoa_cldb_swl14.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/aoa_cldb_swl14.bin \
    $(LOCAL_PATH)/configs/wifi/fstman.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/fstman.ini \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/configs/hostapd/hostapd.accept:$(TARGET_COPY_OUT_VENDOR)/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd/hostapd.deny:$(TARGET_COPY_OUT_VENDOR)/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:$(TARGET_COPY_OUT_VENDOR)/etc/hostapd/hostapd_default.conf 

# ZenParts
PRODUCT_PACKAGES += \
    ZenParts

# ZRAM disk
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.config.zram=true

$(call inherit-product, vendor/asus/X00TD/X00TD-vendor.mk)
