.class public final Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OlogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/logging/nano/OlogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OlogTestEnum"
.end annotation


# static fields
.field public static final PERFLOG_ACTIVITYSLOW:I = 0x8

.field public static final PERFLOG_AMPSS:I = 0x12

.field public static final PERFLOG_APPLAUNCH:I = 0x4

.field public static final PERFLOG_ARGOS:I = 0x3

.field public static final PERFLOG_BIGDATA:I = 0x19

.field public static final PERFLOG_BROADCAST:I = 0x9

.field public static final PERFLOG_CPU:I = 0xd

.field public static final PERFLOG_CPUFREQ:I = 0xf

.field public static final PERFLOG_CPUTOP:I = 0xb

.field public static final PERFLOG_CRI:I = 0x4

.field public static final PERFLOG_DEF:I = 0x0

.field public static final PERFLOG_EVT:I = 0x2

.field public static final PERFLOG_EXCESSIVECPUUSAGE:I = 0x7

.field public static final PERFLOG_INPUTD:I = 0x11

.field public static final PERFLOG_IPCSTARVE:I = 0x14

.field public static final PERFLOG_JANK:I = 0x1b

.field public static final PERFLOG_LCD:I = 0xc

.field public static final PERFLOG_LCDV:I = 0x2

.field public static final PERFLOG_LOADAPK:I = 0x5

.field public static final PERFLOG_LOCKCONTENTION:I = 0xe

.field public static final PERFLOG_LOG:I = 0x1

.field public static final PERFLOG_MAINLOOPER:I = 0x6

.field public static final PERFLOG_MEMPRESSURE:I = 0x10

.field public static final PERFLOG_MUTEX:I = 0x16

.field public static final PERFLOG_PERFETTOLOGGINGENABLED:I = 0x18

.field public static final PERFLOG_PSI:I = 0x1a

.field public static final PERFLOG_SCREENSHOT:I = 0x15

.field public static final PERFLOG_SERVICEMANAGERSLOW:I = 0x13

.field public static final PERFLOG_STORE:I = 0xa

.field public static final PERFLOG_SYSTEMSERVER:I = 0x17

.field public static final PERFLOG_UNKNOWN:I = 0x0

.field public static final PERFLOG_WRN:I = 0x3

.field private static volatile _emptyArray:[Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->clear()Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    .line 63
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;
    .registers 2

    .line 50
    sget-object v0, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->_emptyArray:[Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    if-nez v0, :cond_15

    .line 51
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_7
    sget-object v1, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->_emptyArray:[Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    if-nez v1, :cond_10

    .line 54
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    sput-object v1, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->_emptyArray:[Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    .line 56
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 58
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->_emptyArray:[Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    invoke-direct {v0}, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    invoke-direct {v0}, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;
    .registers 2

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->cachedSize:I

    .line 67
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/logging/nano/OlogProto$OlogTestEnum;
    .registers 4
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 76
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_12

    .line 80
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 81
    return-object p0

    .line 78
    :pswitch_f
    return-object p0

    .line 86
    .end local v0    # "tag":I
    :cond_10
    goto :goto_1

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method
