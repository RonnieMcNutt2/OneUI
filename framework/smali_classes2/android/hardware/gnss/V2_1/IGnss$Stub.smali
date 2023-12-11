.class public abstract Landroid/hardware/gnss/V2_1/IGnss$Stub;
.super Landroid/os/HwBinder;
.source "IGnss.java"

# interfaces
.implements Landroid/hardware/gnss/V2_1/IGnss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1207
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1210
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1226
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1266
    new-instance v0, Landroid/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1267
    .local v0, "info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1268
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1269
    const/4 v1, 0x0

    iput v1, v0, Landroid/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1270
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1238
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_2a

    new-array v3, v1, [B

    fill-array-data v3, :array_3e

    new-array v4, v1, [B

    fill-array-data v4, :array_52

    new-array v5, v1, [B

    fill-array-data v5, :array_66

    new-array v1, v1, [B

    fill-array-data v1, :array_7a

    filled-new-array {v2, v3, v4, v5, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_2a
    .array-data 1
        -0x3dt
        0x19t
        -0x1at
        -0x75t
        0x3t
        -0x7et
        -0x67t
        0x58t
        0x40t
        0x44t
        0x2t
        -0x3et
        -0x27t
        -0x3at
        -0x7et
        0x1t
        -0x6at
        0x78t
        0x8t
        0x7dt
        0x60t
        0x49t
        0x58t
        0x7t
        -0x40t
        -0x59t
        0x44t
        0x4et
        0xat
        0x6at
        -0x7t
        -0x7ft
    .end array-data

    :array_3e
    .array-data 1
        -0xbt
        0x60t
        0x5ft
        0x48t
        -0x3et
        -0x5t
        -0x61t
        0x23t
        0x16t
        0x15t
        -0x23t
        -0x6dt
        0x2bt
        -0x9t
        0x30t
        -0x52t
        -0x6bt
        0x40t
        -0xct
        -0x7t
        -0x75t
        0x5bt
        0x7at
        -0x1et
        -0x4et
        0x69t
        -0x69t
        0x5ft
        0x45t
        0x2ft
        0x6dt
        0x73t
    .end array-data

    :array_52
    .array-data 1
        -0x4bt
        -0xft
        -0xct
        -0x3ft
        -0x43t
        0x6dt
        -0x19t
        0x1at
        -0x72t
        0x71t
        -0x29t
        0xft
        0x57t
        -0x33t
        -0x55t
        -0x70t
        0x4at
        -0x40t
        0x24t
        -0x5ft
        0x2ft
        0x3dt
        -0x12t
        0x3et
        0x21t
        0x73t
        0x77t
        0xat
        0x45t
        -0x7dt
        -0x44t
        -0x3et
    .end array-data

    :array_66
    .array-data 1
        -0x13t
        -0x1at
        -0x69t
        0x10t
        -0x3dt
        -0x57t
        0x5ct
        0x2ct
        -0x42t
        -0x7ft
        -0x72t
        0x6ct
        -0x75t
        -0x49t
        0x2ct
        0x78t
        0x16t
        -0x7et
        0x3ft
        -0x54t
        -0x1bt
        -0x4t
        0x21t
        -0x3ft
        0x77t
        0x31t
        -0x4et
        0x6ft
        0x41t
        -0x27t
        0x4dt
        0x65t
    .end array-data

    :array_7a
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1215
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.gnss@1.0::IGnss"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@2.1::IGnss"

    const-string v4, "android.hardware.gnss@2.0::IGnss"

    const-string v5, "android.hardware.gnss@1.1::IGnss"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1232
    const-string v0, "android.hardware.gnss@2.1::IGnss"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1254
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1276
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1278
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 22
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1306
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hardware.gnss@2.1::IGnss"

    const-string v1, "android.hardware.gnss@1.1::IGnss"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "android.hardware.gnss@2.0::IGnss"

    const-string v4, "android.hardware.gnss@1.0::IGnss"

    const/4 v5, 0x0

    const/4 v10, 0x0

    sparse-switch p1, :sswitch_data_4b2

    goto/16 :goto_4b0

    .line 1853
    :sswitch_17
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1855
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->notifySyspropsChanged()V

    .line 1856
    goto/16 :goto_4b0

    .line 1842
    :sswitch_1f
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1844
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1845
    .local v0, "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1846
    invoke-virtual {v0, v9}, Landroid/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1847
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1848
    goto/16 :goto_4b0

    .line 1832
    .end local v0    # "_hidl_out_info":Landroid/internal/hidl/base/V1_0/DebugInfo;
    :sswitch_31
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->ping()V

    .line 1835
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1836
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1837
    goto/16 :goto_4b0

    .line 1827
    :sswitch_3f
    goto/16 :goto_4b0

    .line 1819
    :sswitch_41
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1821
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setHALInstrumentation()V

    .line 1822
    goto/16 :goto_4b0

    .line 1785
    :sswitch_49
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1788
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1790
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1792
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1793
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1794
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1795
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1796
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_70
    if-ge v4, v2, :cond_91

    .line 1798
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1799
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 1801
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_89

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_89

    .line 1805
    invoke-virtual {v3, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1806
    nop

    .line 1796
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    .line 1802
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_89
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1809
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_91
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1811
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1813
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1814
    goto/16 :goto_4b0

    .line 1774
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_9e
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1777
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1778
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1779
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1780
    goto/16 :goto_4b0

    .line 1762
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_b0
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1765
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1766
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1767
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1768
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1769
    goto/16 :goto_4b0

    .line 1751
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_c6
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1754
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1755
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1757
    goto/16 :goto_4b0

    .line 1740
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d8
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1742
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssAntennaInfo()Landroid/hardware/gnss/V2_1/IGnssAntennaInfo;

    move-result-object v0

    .line 1743
    .local v0, "_hidl_out_gnssAntennaInfoIface":Landroid/hardware/gnss/V2_1/IGnssAntennaInfo;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1744
    if-nez v0, :cond_e5

    goto :goto_e9

    :cond_e5
    invoke-interface {v0}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfo;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_e9
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1745
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1746
    goto/16 :goto_4b0

    .line 1729
    .end local v0    # "_hidl_out_gnssAntennaInfoIface":Landroid/hardware/gnss/V2_1/IGnssAntennaInfo;
    :sswitch_f1
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1731
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionMeasurementCorrections_1_1()Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;

    move-result-object v0

    .line 1732
    .local v0, "_hidl_out_measurementCorrectionsIface":Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1733
    if-nez v0, :cond_fe

    goto :goto_102

    :cond_fe
    invoke-interface {v0}, Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_102
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1734
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1735
    goto/16 :goto_4b0

    .line 1718
    .end local v0    # "_hidl_out_measurementCorrectionsIface":Landroid/hardware/gnss/measurement_corrections/V1_1/IMeasurementCorrections;
    :sswitch_10a
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssConfiguration_2_1()Landroid/hardware/gnss/V2_1/IGnssConfiguration;

    move-result-object v0

    .line 1721
    .local v0, "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V2_1/IGnssConfiguration;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1722
    if-nez v0, :cond_117

    goto :goto_11b

    :cond_117
    invoke-interface {v0}, Landroid/hardware/gnss/V2_1/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_11b
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1723
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1724
    goto/16 :goto_4b0

    .line 1707
    .end local v0    # "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V2_1/IGnssConfiguration;
    :sswitch_123
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1709
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssMeasurement_2_1()Landroid/hardware/gnss/V2_1/IGnssMeasurement;

    move-result-object v0

    .line 1710
    .local v0, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V2_1/IGnssMeasurement;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1711
    if-nez v0, :cond_130

    goto :goto_134

    :cond_130
    invoke-interface {v0}, Landroid/hardware/gnss/V2_1/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_134
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1712
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1713
    goto/16 :goto_4b0

    .line 1695
    .end local v0    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V2_1/IGnssMeasurement;
    :sswitch_13c
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1697
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_1/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_1/IGnssCallback;

    move-result-object v0

    .line 1698
    .local v0, "callback":Landroid/hardware/gnss/V2_1/IGnssCallback;
    invoke-virtual {v7, v0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setCallback_2_1(Landroid/hardware/gnss/V2_1/IGnssCallback;)Z

    move-result v1

    .line 1699
    .local v1, "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1700
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1701
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1702
    goto/16 :goto_4b0

    .line 1682
    .end local v0    # "callback":Landroid/hardware/gnss/V2_1/IGnssCallback;
    .end local v1    # "_hidl_out_success":Z
    :sswitch_156
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    new-instance v0, Landroid/hardware/gnss/V2_0/GnssLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_0/GnssLocation;-><init>()V

    .line 1685
    .local v0, "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    invoke-virtual {v0, v8}, Landroid/hardware/gnss/V2_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1686
    invoke-virtual {v7, v0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->injectBestLocation_2_0(Landroid/hardware/gnss/V2_0/GnssLocation;)Z

    move-result v1

    .line 1687
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1688
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1689
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1690
    goto/16 :goto_4b0

    .line 1671
    .end local v0    # "location":Landroid/hardware/gnss/V2_0/GnssLocation;
    .end local v1    # "_hidl_out_success":Z
    :sswitch_170
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssBatching_2_0()Landroid/hardware/gnss/V2_0/IGnssBatching;

    move-result-object v0

    .line 1674
    .local v0, "_hidl_out_batchingIface":Landroid/hardware/gnss/V2_0/IGnssBatching;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1675
    if-nez v0, :cond_17d

    goto :goto_181

    :cond_17d
    invoke-interface {v0}, Landroid/hardware/gnss/V2_0/IGnssBatching;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_181
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1676
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1677
    goto/16 :goto_4b0

    .line 1660
    .end local v0    # "_hidl_out_batchingIface":Landroid/hardware/gnss/V2_0/IGnssBatching;
    :sswitch_189
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1662
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionVisibilityControl()Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;

    move-result-object v0

    .line 1663
    .local v0, "_hidl_out_visibilityControlIface":Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1664
    if-nez v0, :cond_196

    goto :goto_19a

    :cond_196
    invoke-interface {v0}, Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_19a
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1665
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1666
    goto/16 :goto_4b0

    .line 1649
    .end local v0    # "_hidl_out_visibilityControlIface":Landroid/hardware/gnss/visibility_control/V1_0/IGnssVisibilityControl;
    :sswitch_1a2
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionMeasurementCorrections()Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;

    move-result-object v0

    .line 1652
    .local v0, "_hidl_out_measurementCorrectionsIface":Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1653
    if-nez v0, :cond_1af

    goto :goto_1b3

    :cond_1af
    invoke-interface {v0}, Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_1b3
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1654
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1655
    goto/16 :goto_4b0

    .line 1638
    .end local v0    # "_hidl_out_measurementCorrectionsIface":Landroid/hardware/gnss/measurement_corrections/V1_0/IMeasurementCorrections;
    :sswitch_1bb
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssMeasurement_2_0()Landroid/hardware/gnss/V2_0/IGnssMeasurement;

    move-result-object v0

    .line 1641
    .local v0, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V2_0/IGnssMeasurement;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1642
    if-nez v0, :cond_1c8

    goto :goto_1cc

    :cond_1c8
    invoke-interface {v0}, Landroid/hardware/gnss/V2_0/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_1cc
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1643
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1644
    goto/16 :goto_4b0

    .line 1627
    .end local v0    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V2_0/IGnssMeasurement;
    :sswitch_1d4
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1629
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionAGnssRil_2_0()Landroid/hardware/gnss/V2_0/IAGnssRil;

    move-result-object v0

    .line 1630
    .local v0, "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V2_0/IAGnssRil;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1631
    if-nez v0, :cond_1e1

    goto :goto_1e5

    :cond_1e1
    invoke-interface {v0}, Landroid/hardware/gnss/V2_0/IAGnssRil;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_1e5
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1632
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1633
    goto/16 :goto_4b0

    .line 1616
    .end local v0    # "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V2_0/IAGnssRil;
    :sswitch_1ed
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionAGnss_2_0()Landroid/hardware/gnss/V2_0/IAGnss;

    move-result-object v0

    .line 1619
    .local v0, "_hidl_out_aGnssIface":Landroid/hardware/gnss/V2_0/IAGnss;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1620
    if-nez v0, :cond_1fa

    goto :goto_1fe

    :cond_1fa
    invoke-interface {v0}, Landroid/hardware/gnss/V2_0/IAGnss;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_1fe
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1621
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1622
    goto/16 :goto_4b0

    .line 1605
    .end local v0    # "_hidl_out_aGnssIface":Landroid/hardware/gnss/V2_0/IAGnss;
    :sswitch_206
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssDebug_2_0()Landroid/hardware/gnss/V2_0/IGnssDebug;

    move-result-object v0

    .line 1608
    .local v0, "_hidl_out_gnssDebugIface":Landroid/hardware/gnss/V2_0/IGnssDebug;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1609
    if-nez v0, :cond_213

    goto :goto_217

    :cond_213
    invoke-interface {v0}, Landroid/hardware/gnss/V2_0/IGnssDebug;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_217
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1610
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1611
    goto/16 :goto_4b0

    .line 1594
    .end local v0    # "_hidl_out_gnssDebugIface":Landroid/hardware/gnss/V2_0/IGnssDebug;
    :sswitch_21f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssConfiguration_2_0()Landroid/hardware/gnss/V2_0/IGnssConfiguration;

    move-result-object v0

    .line 1597
    .local v0, "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V2_0/IGnssConfiguration;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1598
    if-nez v0, :cond_22c

    goto :goto_230

    :cond_22c
    invoke-interface {v0}, Landroid/hardware/gnss/V2_0/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_230
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1599
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1600
    goto/16 :goto_4b0

    .line 1582
    .end local v0    # "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V2_0/IGnssConfiguration;
    :sswitch_238
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1584
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V2_0/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V2_0/IGnssCallback;

    move-result-object v0

    .line 1585
    .local v0, "callback":Landroid/hardware/gnss/V2_0/IGnssCallback;
    invoke-virtual {v7, v0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setCallback_2_0(Landroid/hardware/gnss/V2_0/IGnssCallback;)Z

    move-result v1

    .line 1586
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1587
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1588
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1589
    goto/16 :goto_4b0

    .line 1569
    .end local v0    # "callback":Landroid/hardware/gnss/V2_0/IGnssCallback;
    .end local v1    # "_hidl_out_success":Z
    :sswitch_252
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1571
    new-instance v0, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    .line 1572
    .local v0, "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    invoke-virtual {v0, v8}, Landroid/hardware/gnss/V1_0/GnssLocation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1573
    invoke-virtual {v7, v0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->injectBestLocation(Landroid/hardware/gnss/V1_0/GnssLocation;)Z

    move-result v1

    .line 1574
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1575
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1576
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1577
    goto/16 :goto_4b0

    .line 1558
    .end local v0    # "location":Landroid/hardware/gnss/V1_0/GnssLocation;
    .end local v1    # "_hidl_out_success":Z
    :sswitch_26c
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssMeasurement_1_1()Landroid/hardware/gnss/V1_1/IGnssMeasurement;

    move-result-object v0

    .line 1561
    .local v0, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1562
    if-nez v0, :cond_279

    goto :goto_27d

    :cond_279
    invoke-interface {v0}, Landroid/hardware/gnss/V1_1/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_27d
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1563
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1564
    goto/16 :goto_4b0

    .line 1547
    .end local v0    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_1/IGnssMeasurement;
    :sswitch_285
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssConfiguration_1_1()Landroid/hardware/gnss/V1_1/IGnssConfiguration;

    move-result-object v0

    .line 1550
    .local v0, "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1551
    if-nez v0, :cond_292

    goto :goto_296

    :cond_292
    invoke-interface {v0}, Landroid/hardware/gnss/V1_1/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_296
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1552
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1553
    goto/16 :goto_4b0

    .line 1530
    .end local v0    # "_hidl_out_gnssConfigurationIface":Landroid/hardware/gnss/V1_1/IGnssConfiguration;
    :sswitch_29e
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v11

    .line 1533
    .local v11, "mode":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1534
    .local v12, "recurrence":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1535
    .local v13, "minIntervalMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 1536
    .local v14, "preferredAccuracyMeters":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 1537
    .local v15, "preferredTimeMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 1538
    .local v16, "lowPowerMode":Z
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setPositionMode_1_1(BIIIIZ)Z

    move-result v0

    .line 1539
    .local v0, "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1540
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1541
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1542
    goto/16 :goto_4b0

    .line 1518
    .end local v0    # "_hidl_out_success":Z
    .end local v11    # "mode":B
    .end local v12    # "recurrence":I
    .end local v13    # "minIntervalMs":I
    .end local v14    # "preferredAccuracyMeters":I
    .end local v15    # "preferredTimeMs":I
    .end local v16    # "lowPowerMode":Z
    :sswitch_2d1
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1520
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_1/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_1/IGnssCallback;

    move-result-object v0

    .line 1521
    .local v0, "callback":Landroid/hardware/gnss/V1_1/IGnssCallback;
    invoke-virtual {v7, v0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setCallback_1_1(Landroid/hardware/gnss/V1_1/IGnssCallback;)Z

    move-result v1

    .line 1522
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1523
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1524
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1525
    goto/16 :goto_4b0

    .line 1507
    .end local v0    # "callback":Landroid/hardware/gnss/V1_1/IGnssCallback;
    .end local v1    # "_hidl_out_success":Z
    :sswitch_2eb
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1509
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssBatching()Landroid/hardware/gnss/V1_0/IGnssBatching;

    move-result-object v0

    .line 1510
    .local v0, "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1511
    if-nez v0, :cond_2f8

    goto :goto_2fc

    :cond_2f8
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssBatching;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_2fc
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1512
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1513
    goto/16 :goto_4b0

    .line 1496
    .end local v0    # "_hidl_out_batchingIface":Landroid/hardware/gnss/V1_0/IGnssBatching;
    :sswitch_304
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1498
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssDebug()Landroid/hardware/gnss/V1_0/IGnssDebug;

    move-result-object v0

    .line 1499
    .local v0, "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1500
    if-nez v0, :cond_311

    goto :goto_315

    :cond_311
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssDebug;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_315
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1501
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1502
    goto/16 :goto_4b0

    .line 1485
    .end local v0    # "_hidl_out_debugIface":Landroid/hardware/gnss/V1_0/IGnssDebug;
    :sswitch_31d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1487
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssConfiguration()Landroid/hardware/gnss/V1_0/IGnssConfiguration;

    move-result-object v0

    .line 1488
    .local v0, "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1489
    if-nez v0, :cond_32a

    goto :goto_32e

    :cond_32a
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssConfiguration;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_32e
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1490
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1491
    goto/16 :goto_4b0

    .line 1474
    .end local v0    # "_hidl_out_gnssConfigIface":Landroid/hardware/gnss/V1_0/IGnssConfiguration;
    :sswitch_336
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1476
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionXtra()Landroid/hardware/gnss/V1_0/IGnssXtra;

    move-result-object v0

    .line 1477
    .local v0, "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1478
    if-nez v0, :cond_343

    goto :goto_347

    :cond_343
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssXtra;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_347
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1479
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1480
    goto/16 :goto_4b0

    .line 1463
    .end local v0    # "_hidl_out_xtraIface":Landroid/hardware/gnss/V1_0/IGnssXtra;
    :sswitch_34f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssNavigationMessage()Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;

    move-result-object v0

    .line 1466
    .local v0, "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1467
    if-nez v0, :cond_35c

    goto :goto_360

    :cond_35c
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_360
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1468
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1469
    goto/16 :goto_4b0

    .line 1452
    .end local v0    # "_hidl_out_gnssNavigationIface":Landroid/hardware/gnss/V1_0/IGnssNavigationMessage;
    :sswitch_368
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssMeasurement()Landroid/hardware/gnss/V1_0/IGnssMeasurement;

    move-result-object v0

    .line 1455
    .local v0, "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1456
    if-nez v0, :cond_375

    goto :goto_379

    :cond_375
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurement;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_379
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1457
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1458
    goto/16 :goto_4b0

    .line 1441
    .end local v0    # "_hidl_out_gnssMeasurementIface":Landroid/hardware/gnss/V1_0/IGnssMeasurement;
    :sswitch_381
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssNi()Landroid/hardware/gnss/V1_0/IGnssNi;

    move-result-object v0

    .line 1444
    .local v0, "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1445
    if-nez v0, :cond_38e

    goto :goto_392

    :cond_38e
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssNi;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_392
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1446
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1447
    goto/16 :goto_4b0

    .line 1430
    .end local v0    # "_hidl_out_gnssNiIface":Landroid/hardware/gnss/V1_0/IGnssNi;
    :sswitch_39a
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionAGnss()Landroid/hardware/gnss/V1_0/IAGnss;

    move-result-object v0

    .line 1433
    .local v0, "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1434
    if-nez v0, :cond_3a7

    goto :goto_3ab

    :cond_3a7
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IAGnss;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_3ab
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1435
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1436
    goto/16 :goto_4b0

    .line 1419
    .end local v0    # "_hidl_out_aGnssIface":Landroid/hardware/gnss/V1_0/IAGnss;
    :sswitch_3b3
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1421
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionGnssGeofencing()Landroid/hardware/gnss/V1_0/IGnssGeofencing;

    move-result-object v0

    .line 1422
    .local v0, "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1423
    if-nez v0, :cond_3c0

    goto :goto_3c4

    :cond_3c0
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IGnssGeofencing;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_3c4
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1424
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1425
    goto/16 :goto_4b0

    .line 1408
    .end local v0    # "_hidl_out_gnssGeofencingIface":Landroid/hardware/gnss/V1_0/IGnssGeofencing;
    :sswitch_3cc
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->getExtensionAGnssRil()Landroid/hardware/gnss/V1_0/IAGnssRil;

    move-result-object v0

    .line 1411
    .local v0, "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1412
    if-nez v0, :cond_3d9

    goto :goto_3dd

    :cond_3d9
    invoke-interface {v0}, Landroid/hardware/gnss/V1_0/IAGnssRil;->asBinder()Landroid/os/IHwBinder;

    move-result-object v5

    :goto_3dd
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 1413
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1414
    goto/16 :goto_4b0

    .line 1392
    .end local v0    # "_hidl_out_aGnssRilIface":Landroid/hardware/gnss/V1_0/IAGnssRil;
    :sswitch_3e5
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v6

    .line 1395
    .local v6, "mode":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1396
    .local v11, "recurrence":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1397
    .local v12, "minIntervalMs":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1398
    .local v13, "preferredAccuracyMeters":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 1399
    .local v14, "preferredTimeMs":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setPositionMode(BIIII)Z

    move-result v0

    .line 1400
    .local v0, "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1401
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1402
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1403
    goto/16 :goto_4b0

    .line 1381
    .end local v0    # "_hidl_out_success":Z
    .end local v6    # "mode":B
    .end local v11    # "recurrence":I
    .end local v12    # "minIntervalMs":I
    .end local v13    # "preferredAccuracyMeters":I
    .end local v14    # "preferredTimeMs":I
    :sswitch_412
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v0

    .line 1384
    .local v0, "aidingDataFlags":S
    invoke-virtual {v7, v0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->deleteAidingData(S)V

    .line 1385
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1386
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1387
    goto/16 :goto_4b0

    .line 1367
    .end local v0    # "aidingDataFlags":S
    :sswitch_424
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v11

    .line 1370
    .local v11, "latitudeDegrees":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v13

    .line 1371
    .local v13, "longitudeDegrees":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v6

    .line 1372
    .local v6, "accuracyMeters":F
    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide v3, v13

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->injectLocation(DDF)Z

    move-result v0

    .line 1373
    .local v0, "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1374
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1375
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1376
    goto :goto_4b0

    .line 1353
    .end local v0    # "_hidl_out_success":Z
    .end local v6    # "accuracyMeters":F
    .end local v11    # "latitudeDegrees":D
    .end local v13    # "longitudeDegrees":D
    :sswitch_446
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1355
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v11

    .line 1356
    .local v11, "timeMs":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v13

    .line 1357
    .local v13, "timeReferenceMs":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 1358
    .local v6, "uncertaintyMs":I
    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide v3, v13

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->injectTime(JJI)Z

    move-result v0

    .line 1359
    .restart local v0    # "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1360
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1361
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1362
    goto :goto_4b0

    .line 1343
    .end local v0    # "_hidl_out_success":Z
    .end local v6    # "uncertaintyMs":I
    .end local v11    # "timeMs":J
    .end local v13    # "timeReferenceMs":J
    :sswitch_468
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1345
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->cleanup()V

    .line 1346
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1347
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1348
    goto :goto_4b0

    .line 1332
    :sswitch_475
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->stop()Z

    move-result v0

    .line 1335
    .restart local v0    # "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1336
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1337
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1338
    goto :goto_4b0

    .line 1321
    .end local v0    # "_hidl_out_success":Z
    :sswitch_486
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->start()Z

    move-result v0

    .line 1324
    .restart local v0    # "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1325
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1327
    goto :goto_4b0

    .line 1309
    .end local v0    # "_hidl_out_success":Z
    :sswitch_497
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/gnss/V1_0/IGnssCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/gnss/V1_0/IGnssCallback;

    move-result-object v0

    .line 1312
    .local v0, "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    invoke-virtual {v7, v0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->setCallback(Landroid/hardware/gnss/V1_0/IGnssCallback;)Z

    move-result v1

    .line 1313
    .restart local v1    # "_hidl_out_success":Z
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1314
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1315
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1316
    nop

    .line 1865
    .end local v0    # "callback":Landroid/hardware/gnss/V1_0/IGnssCallback;
    .end local v1    # "_hidl_out_success":Z
    :goto_4b0
    return-void

    nop

    :sswitch_data_4b2
    .sparse-switch
        0x1 -> :sswitch_497
        0x2 -> :sswitch_486
        0x3 -> :sswitch_475
        0x4 -> :sswitch_468
        0x5 -> :sswitch_446
        0x6 -> :sswitch_424
        0x7 -> :sswitch_412
        0x8 -> :sswitch_3e5
        0x9 -> :sswitch_3cc
        0xa -> :sswitch_3b3
        0xb -> :sswitch_39a
        0xc -> :sswitch_381
        0xd -> :sswitch_368
        0xe -> :sswitch_34f
        0xf -> :sswitch_336
        0x10 -> :sswitch_31d
        0x11 -> :sswitch_304
        0x12 -> :sswitch_2eb
        0x13 -> :sswitch_2d1
        0x14 -> :sswitch_29e
        0x15 -> :sswitch_285
        0x16 -> :sswitch_26c
        0x17 -> :sswitch_252
        0x18 -> :sswitch_238
        0x19 -> :sswitch_21f
        0x1a -> :sswitch_206
        0x1b -> :sswitch_1ed
        0x1c -> :sswitch_1d4
        0x1d -> :sswitch_1bb
        0x1e -> :sswitch_1a2
        0x1f -> :sswitch_189
        0x20 -> :sswitch_170
        0x21 -> :sswitch_156
        0x22 -> :sswitch_13c
        0x23 -> :sswitch_123
        0x24 -> :sswitch_10a
        0x25 -> :sswitch_f1
        0x26 -> :sswitch_d8
        0xf43484e -> :sswitch_c6
        0xf444247 -> :sswitch_b0
        0xf445343 -> :sswitch_9e
        0xf485348 -> :sswitch_49
        0xf494e54 -> :sswitch_41
        0xf4c5444 -> :sswitch_3f
        0xf504e47 -> :sswitch_31
        0xf524546 -> :sswitch_1f
        0xf535953 -> :sswitch_17
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 1260
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1288
    const-string v0, "android.hardware.gnss@2.1::IGnss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1289
    return-object p0

    .line 1291
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1295
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->registerService(Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 1250
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/gnss/V2_1/IGnss$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1282
    const/4 v0, 0x1

    return v0
.end method
