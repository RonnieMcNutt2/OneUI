.class public abstract Landroid/telephony/CellBroadcastService;
.super Landroid/app/Service;
.source "CellBroadcastService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;,
        Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field public static final CELL_BROADCAST_SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.CellBroadcastService"

.field private static final GSM_HEADER_LENGTH:I = 0x6

.field private static final ONEPAGE_DATA_LENGTH:I = 0x53

.field private static final TAG:Ljava/lang/String; = "CellBroadcastService"

.field private static final UMTS_HEADER_LENGTH:I = 0x7


# instance fields
.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field

.field private final mStubWrapper:Landroid/telephony/ICellBroadcastService$Stub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSmsCbPageMap(Landroid/telephony/CellBroadcastService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/telephony/CellBroadcastService;->mSmsCbPageMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertGsmToUmts(Landroid/telephony/CellBroadcastService;[B[BIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/telephony/CellBroadcastService;->convertGsmToUmts([B[BIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconvertGsmToUmtsForMultiPage(Landroid/telephony/CellBroadcastService;I[[B[BII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/telephony/CellBroadcastService;->convertGsmToUmtsForMultiPage(I[[B[BII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSmsCbHeader(Landroid/telephony/CellBroadcastService;[B)Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/CellBroadcastService;->createSmsCbHeader([B)Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 79
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 348
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/telephony/CellBroadcastService;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 80
    new-instance v0, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;

    invoke-direct {v0, p0}, Landroid/telephony/CellBroadcastService$ICellBroadcastServiceWrapper;-><init>(Landroid/telephony/CellBroadcastService;)V

    iput-object v0, p0, Landroid/telephony/CellBroadcastService;->mStubWrapper:Landroid/telephony/ICellBroadcastService$Stub;

    .line 81
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/CellBroadcastService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Landroid/telephony/CellBroadcastService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/CellBroadcastService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/CellBroadcastService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Landroid/telephony/CellBroadcastService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/CellBroadcastService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private convertGsmToUmts([B[BIII)V
    .registers 12
    .param p1, "pdu"    # [B
    .param p2, "wac"    # [B
    .param p3, "pduLength"    # I
    .param p4, "wacLength"    # I
    .param p5, "slotIndex"    # I

    .line 375
    add-int/lit8 v0, p4, 0x5a

    new-array v0, v0, [B

    .line 377
    .local v0, "umtsPdu":[B
    const/4 v1, 0x0

    .line 378
    .local v1, "offset":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    const/4 v3, 0x1

    :try_start_8
    aput-byte v3, v0, v1

    .line 379
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    const/4 v4, 0x2

    aget-byte v4, p1, v4

    aput-byte v4, v0, v2

    .line 380
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    const/4 v4, 0x3

    aget-byte v4, p1, v4

    aput-byte v4, v0, v1

    .line 381
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    const/4 v4, 0x0

    aget-byte v5, p1, v4

    aput-byte v5, v0, v2

    .line 382
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v5, p1, v3

    aput-byte v5, v0, v1

    .line 383
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    const/4 v5, 0x4

    aget-byte v5, p1, v5

    aput-byte v5, v0, v2

    .line 384
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    aput-byte v3, v0, v1

    .line 386
    add-int/lit8 v1, p3, -0x6

    const/4 v3, 0x6

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    add-int/lit8 v1, p3, -0x6

    int-to-byte v1, v1

    const/16 v3, 0x59

    aput-byte v1, v0, v3

    .line 390
    if-lez p4, :cond_44

    .line 391
    const/16 v1, 0x5a

    invoke-static {p2, v4, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    :cond_44
    invoke-virtual {p0, p5, v0}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V
    :try_end_47
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_47} :catch_48

    .line 397
    .end local v2    # "offset":I
    goto :goto_68

    .line 394
    :catch_48
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in convertGsmToUmts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CellBroadcastService"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0, p5, p1}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V

    .line 398
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_68
    return-void
.end method

.method private convertGsmToUmtsForMultiPage(I[[B[BII)V
    .registers 22
    .param p1, "pageCount"    # I
    .param p2, "pdus"    # [[B
    .param p3, "wac"    # [B
    .param p4, "wacLength"    # I
    .param p5, "slotIndex"    # I

    .line 406
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    mul-int/lit8 v0, v2, 0x53

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v4

    new-array v6, v0, [B

    .line 408
    .local v6, "umtsPdu":[B
    const/4 v0, 0x0

    .line 409
    .local v0, "offset":I
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "offset":I
    .local v7, "offset":I
    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_16
    aput-byte v9, v6, v0

    .line 410
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "offset":I
    .restart local v0    # "offset":I
    aget-object v10, v3, v8

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    aput-byte v10, v6, v7

    .line 411
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "offset":I
    .restart local v7    # "offset":I
    aget-object v10, v3, v8

    const/4 v11, 0x3

    aget-byte v10, v10, v11

    aput-byte v10, v6, v0

    .line 412
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "offset":I
    .restart local v0    # "offset":I
    aget-object v10, v3, v8

    aget-byte v10, v10, v8

    aput-byte v10, v6, v7

    .line 413
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "offset":I
    .restart local v7    # "offset":I
    aget-object v10, v3, v8

    aget-byte v10, v10, v9

    aput-byte v10, v6, v0

    .line 414
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "offset":I
    .restart local v0    # "offset":I
    aget-object v10, v3, v8

    const/4 v11, 0x4

    aget-byte v10, v10, v11

    aput-byte v10, v6, v7

    .line 415
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "offset":I
    .restart local v7    # "offset":I
    int-to-byte v10, v2

    aput-byte v10, v6, v0

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "page":I
    array-length v10, v3

    move v11, v8

    :goto_4b
    if-ge v11, v10, :cond_68

    aget-object v12, v3, v11

    .line 419
    .local v12, "pdu":[B
    mul-int/lit8 v13, v0, 0x53

    add-int/lit8 v13, v13, 0x7

    array-length v14, v12

    const/4 v15, 0x6

    sub-int/2addr v14, v15

    invoke-static {v12, v15, v6, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v13, v0, 0x53

    add-int/lit8 v13, v13, 0x7

    sub-int/2addr v13, v9

    array-length v14, v12

    sub-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v6, v13
    :try_end_65
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_65} :catch_7c

    .line 418
    .end local v12    # "pdu":[B
    add-int/lit8 v11, v11, 0x1

    goto :goto_4b

    .line 424
    :cond_68
    if-eqz v4, :cond_74

    .line 425
    mul-int/lit8 v9, v2, 0x53

    add-int/lit8 v9, v9, 0x7

    move-object/from16 v10, p3

    :try_start_70
    invoke-static {v10, v8, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_76

    .line 424
    :cond_74
    move-object/from16 v10, p3

    .line 428
    :goto_76
    invoke-virtual {v1, v5, v6}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V
    :try_end_79
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_70 .. :try_end_79} :catch_7a

    .line 434
    .end local v0    # "page":I
    .end local v7    # "offset":I
    goto :goto_a6

    .line 429
    :catch_7a
    move-exception v0

    goto :goto_7f

    :catch_7c
    move-exception v0

    move-object/from16 v10, p3

    .line 430
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_7f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in convertGsmToUmtsForMultiPage: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "CellBroadcastService"

    invoke-static {v9, v7}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    array-length v7, v3

    :goto_9c
    if-ge v8, v7, :cond_a6

    aget-object v9, v3, v8

    .line 432
    .local v9, "pdu":[B
    invoke-virtual {v1, v5, v9}, Landroid/telephony/CellBroadcastService;->onGsmCellBroadcastSms(I[B)V

    .line 431
    .end local v9    # "pdu":[B
    add-int/lit8 v8, v8, 0x1

    goto :goto_9c

    .line 435
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_a6
    :goto_a6
    return-void
.end method

.method private createSmsCbHeader([B)Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .registers 5
    .param p1, "bytes"    # [B

    .line 362
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 363
    :catch_6
    move-exception v0

    .line 364
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create SmsCbHeader, ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CellBroadcastService"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public abstract getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Landroid/telephony/CellBroadcastService;->mStubWrapper:Landroid/telephony/ICellBroadcastService$Stub;

    return-object v0
.end method

.method public abstract onCdmaCellBroadcastSms(I[BI)V
.end method

.method public abstract onCdmaScpMessage(ILjava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGsmCellBroadcastSms(I[B)V
.end method
