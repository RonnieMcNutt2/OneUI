.class public Lcom/android/server/QRNGATCmd;
.super Ljava/lang/Object;
.source "QRNGATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMAND_QRNG:Ljava/lang/String; = "QRNGTEST"

.field private static final AT_MAIN_INDEX:I = 0x0

.field private static final AT_MAIN_INDEX_OPERATION:I = 0x0

.field private static final AT_MAIN_INDEX_READ_DATA:I = 0x1

.field private static final AT_MAIN_INDEX_WRITE_DATA:I = 0x2

.field private static final AT_MAIN_OPERATION:I = 0x0

.field private static final AT_MAIN_READ_DATA:I = 0xa

.field private static final AT_MAIN_WRITE_DATA:I = 0x14

.field private static final AT_MID_INDEX:I = 0x1

.field private static final AT_MINOR_INDEX:I = 0x2

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG(INVALID_PARAM)"

.field private static final AT_RESPONSE_NOT_SUPPORT_QRNG:Ljava/lang/String; = "NG(NO_SPT_QRNG)"

.field private static final IOCTL_ERR_FAULT:I = -0xe

.field private static final IOCTL_ERR_INVAL:I = -0x16

.field private static final IOCTL_ERR_TIMEDOUT:I = -0x6e

.field private static final NO_ERROR:I = 0x0

.field private static final SAMSUNG_QRNG_DIAG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QRNG#StubATCmd"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/QRNGATCmd;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    .line 91
    .local v0, "result":[Ljava/lang/String;
    :try_start_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 95
    goto :goto_e

    .line 92
    :catch_9
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 94
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_e
    return-object v0
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .registers 2

    .line 49
    const-string v0, "QRNGTEST"

    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "cmd"    # Ljava/lang/String;

    .line 54
    const-string v0, "QRNGTEST ProcessCmd ["

    const/4 v1, 0x0

    .line 56
    .local v1, "ret":I
    invoke-direct {p0, p1}, Lcom/android/server/QRNGATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "params":[Ljava/lang/String;
    const-string v3, "NG(INVALID_PARAM)"

    const-string v4, "QRNG#StubATCmd"

    if-nez v2, :cond_13

    .line 59
    const-string v0, "QRNGTEST processCmd wrong param."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-object v3

    .line 63
    :cond_13
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v8, v2, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, "result":Ljava/lang/String;
    :try_start_2e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] start"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 68
    .local v6, "sw":I
    if-nez v6, :cond_79

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NG(NO_SPT_QRNG)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_90

    .line 72
    :cond_79
    const-string v7, "QRNGTEST ProcessCmd wrong command."

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 75
    :goto_90
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "] end"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_aa} :catch_ac

    .line 81
    nop

    .end local v6    # "sw":I
    goto :goto_c1

    .line 77
    :catch_ac
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c1
    return-object v5
.end method
