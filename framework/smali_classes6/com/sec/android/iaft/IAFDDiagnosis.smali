.class public Lcom/sec/android/iaft/IAFDDiagnosis;
.super Ljava/lang/Object;
.source "IAFDDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;,
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFDDiagnosisHolder;,
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;,
        Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;
    }
.end annotation


# static fields
.field private static final EXP_REPAIRINFO_AppFlag:I = 0x3

.field private static final EXP_REPAIRINFO_MainLan:I = 0x4

.field private static final EXP_REPAIRINFO_NoUpdateFlag:I = 0x2

.field private static final EXP_REPAIRINFO_Only32BitApp:I = 0x6

.field private static final EXP_REPAIRINFO_PileFlag:I = 0x0

.field private static final EXP_REPAIRINFO_RepairModeFlag:I = 0x1

.field private static final EXP_REPAIRINFO_SubLan:I = 0x5

.field private static final EXP_RULE_32BITONLY:I = 0x4

.field private static final EXP_RULE_LIBS:I = 0x2

.field private static final EXP_RULE_NONE:I = 0x0

.field private static final EXP_RULE_PKGN:I = 0x1

.field private static final EXP_UNKNOW:I = -0x1

.field private static final FLAG_SUPPORT3RDAPP:I = 0x1

.field private static final FLAG_SUPPORTSYSAPP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IAFDDiagnosis"


# instance fields
.field private callstack:Ljava/lang/String;

.field private component:Ljava/lang/String;

.field private curAppFlag:I

.field private curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

.field private dualUserId:I

.field private expType:I

.field private isCHNModel:Z

.field private isParseSuccess:Z

.field private mContext:Landroid/content/Context;

.field private mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

.field private mSalesCode:Ljava/lang/String;

.field private reason:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    .line 70
    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    .line 71
    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mSalesCode:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/iaft/IAFDDiagnosis-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;-><init>()V

    return-void
.end method

.method private findStringFromRtoL(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 13
    .param p1, "orgStr"    # Ljava/lang/String;
    .param p2, "desStr"    # Ljava/lang/String;
    .param p3, "rIndex"    # I
    .param p4, "limitlen"    # I

    .line 278
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 279
    .local v0, "deslen":I
    add-int/lit8 v1, p3, 0x1

    sub-int/2addr v1, v0

    .line 280
    .local v1, "ileft":I
    add-int/lit8 v2, v0, -0x1

    .line 281
    .local v2, "icmpEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p4

    .line 282
    .local v3, "iorgend":I
    if-gez v3, :cond_11

    const/4 v3, 0x0

    .line 283
    :cond_11
    :goto_11
    if-lt v1, v3, :cond_2c

    .line 284
    move v4, v1

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_15
    if-ge v5, v0, :cond_29

    .line 285
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_29

    .line 286
    if-ne v5, v2, :cond_24

    .line 287
    return v1

    .line 284
    :cond_24
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 292
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 294
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_2c
    const/4 v4, -0x1

    return v4
.end method

.method private getCallstack()Ljava/lang/String;
    .registers 2

    .line 735
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    return-object v0
.end method

.method private getCallstackForJE(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "startStr"    # Ljava/lang/String;
    .param p3, "limitLen"    # I

    .line 299
    shl-int/lit8 v0, p3, 0x4

    .line 300
    .local v0, "maxlen":I
    const-string v1, ""

    .line 302
    .local v1, "outstring":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 303
    .local v2, "srclen":I
    if-gt v2, p3, :cond_b

    return-object p1

    .line 307
    :cond_b
    add-int/lit8 v3, v2, -0x1

    .line 308
    .local v3, "iend":I
    const/4 v4, 0x0

    .local v4, "icnt":I
    move v5, p3

    .line 309
    .local v5, "curLimitlen":I
    :goto_f
    const/4 v6, 0x2

    if-ge v4, v6, :cond_3e

    .line 310
    add-int/lit8 v4, v4, 0x1

    .line 311
    const-string v6, "Caused by:"

    invoke-direct {p0, p1, v6, v3, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->findStringFromRtoL(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    .line 312
    .local v6, "istart":I
    if-ltz v6, :cond_3e

    .line 313
    sub-int v7, v3, v6

    if-ge v7, v5, :cond_23

    sub-int v7, v3, v6

    goto :goto_24

    :cond_23
    move v7, v5

    .line 314
    .local v7, "curlen":I
    :goto_24
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int v9, v6, v7

    invoke-virtual {p1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    sub-int/2addr v5, v7

    .line 316
    move v3, v6

    goto :goto_f

    .line 321
    .end local v6    # "istart":I
    .end local v7    # "curlen":I
    :cond_3e
    if-lez v5, :cond_56

    .line 322
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    :cond_56
    return-object v1
.end method

.method private getCauseForNE(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "limitLen"    # I

    .line 211
    const/4 v0, 0x6

    .line 212
    .local v0, "prefixLen":I
    const-string v1, "Cause:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 213
    .local v1, "istart":I
    const/4 v2, 0x0

    if-gez v1, :cond_15

    .line 214
    const-string v3, "Abort message:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 215
    const/16 v0, 0xe

    .line 216
    if-gez v1, :cond_15

    .line 217
    return-object v2

    .line 220
    :cond_15
    add-int v3, v1, p2

    .line 221
    .local v3, "iend":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_1f

    move v4, v3

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_23
    move v3, v4

    .line 223
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "strtmp":Ljava/lang/String;
    if-nez v4, :cond_2b

    .line 225
    return-object v2

    .line 227
    :cond_2b
    move v1, v0

    .line 228
    add-int v2, v1, p2

    .line 229
    .end local v3    # "iend":I
    .local v2, "iend":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_36

    move v3, v2

    goto :goto_3a

    :cond_36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_3a
    move v2, v3

    .line 230
    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 231
    .local v3, "j":I
    if-le v3, v1, :cond_49

    .line 232
    if-gt v2, v3, :cond_47

    move v5, v2

    goto :goto_48

    :cond_47
    move v5, v3

    :goto_48
    move v2, v5

    .line 234
    :cond_49
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getComponent()Ljava/lang/String;
    .registers 2

    .line 731
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    return-object v0
.end method

.method private getComponent(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 9
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "callstack"    # Ljava/lang/String;
    .param p3, "limitLen"    # I
    .param p4, "isNativeCrash"    # Z

    .line 241
    const-string v0, "com."

    if-eqz p1, :cond_13

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 243
    .local v1, "istart":I
    if-ltz v1, :cond_13

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 247
    .end local v1    # "istart":I
    :cond_13
    if-eqz p2, :cond_62

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "ifrom":I
    if-eqz p4, :cond_36

    .line 250
    const-string v2, "/data/app/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 251
    if-gez v1, :cond_26

    const-string v2, "/app/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 252
    :cond_26
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 253
    .local v2, "istart":I
    if-gez v2, :cond_30

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 254
    :cond_30
    if-gez v2, :cond_3a

    .line 255
    if-ltz v1, :cond_3a

    move v2, v1

    goto :goto_3a

    .line 258
    .end local v2    # "istart":I
    :cond_36
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 261
    .restart local v2    # "istart":I
    :cond_3a
    :goto_3a
    if-ltz v2, :cond_62

    .line 262
    const-string v0, "\n"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 263
    .local v0, "iend":I
    if-lez v0, :cond_4e

    .line 264
    add-int v3, v2, p3

    if-gt v0, v3, :cond_4a

    move v3, v0

    goto :goto_4c

    :cond_4a
    add-int v3, v2, p3

    :goto_4c
    move v0, v3

    goto :goto_5d

    .line 266
    :cond_4e
    add-int v0, v2, p3

    .line 267
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_58

    move v3, v0

    goto :goto_5c

    :cond_58
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    :goto_5c
    move v0, v3

    .line 269
    :goto_5d
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 272
    .end local v0    # "iend":I
    .end local v1    # "ifrom":I
    .end local v2    # "istart":I
    :cond_62
    return-object p1
.end method

.method public static getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;
    .registers 1

    .line 84
    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFDDiagnosisHolder;->-$$Nest$sfgetINSTANCE()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object v0

    return-object v0
.end method

.method private getReason()Ljava/lang/String;
    .registers 2

    .line 727
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    return-object v0
.end method

.method private getRepairType(ILjava/lang/String;)I
    .registers 12
    .param p1, "errtype"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 606
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "strkey":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetisSupportRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 608
    return v2

    .line 609
    :cond_10
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 611
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_16
    const-string v3, "com.samsung.android.voc"

    const/16 v4, 0x4000

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 612
    .local v3, "pmInfo":Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_21

    .line 613
    return v2

    .line 614
    :cond_21
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v6, v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetminVocAppVersionCode(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_32

    .line 615
    return v2

    .line 616
    :cond_32
    const/16 v4, 0x27

    if-ne p1, v4, :cond_48

    .line 617
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v7, v7, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v7}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetminVocAppVersionCodeForOnlyShow(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_47

    .line 618
    return v2

    .line 619
    :cond_47
    move-object v0, p2

    .line 621
    :cond_48
    if-ne p1, v4, :cond_5b

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v6, v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetminVocAppVersionCodeForOnlyShow(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)J

    move-result-wide v6
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_56} :catch_75

    cmp-long v4, v4, v6

    if-gez v4, :cond_5b

    .line 622
    return v2

    .line 625
    .end local v3    # "pmInfo":Landroid/content/pm/PackageInfo;
    :cond_5b
    nop

    .line 626
    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v3, v3, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v3, v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, "keyStr":[Ljava/lang/String;
    if-eqz v3, :cond_74

    .line 628
    aget-object v2, v3, v2

    const-string v4, "Pile"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 629
    const/4 v2, 0x1

    return v2

    .line 631
    :cond_72
    const/4 v2, 0x2

    return v2

    .line 633
    :cond_74
    return v2

    .line 623
    .end local v3    # "keyStr":[Ljava/lang/String;
    :catch_75
    move-exception v3

    .line 624
    .local v3, "e":Ljava/lang/Exception;
    return v2
.end method

.method private getSubStringForNE(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 9
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "limitLen"    # I
    .param p3, "isHeaderInfo"    # Z

    .line 181
    const-string v0, "backtrace:"

    if-eqz p3, :cond_4f

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "is64Bit":Z
    const-string v2, "ABI:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, "istart":I
    add-int/lit8 v3, v2, 0x9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x36

    if-ne v3, v4, :cond_16

    const/4 v1, 0x1

    .line 185
    :cond_16
    const-string v3, "pid:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 186
    if-eqz v1, :cond_25

    const-string v3, " x0 "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "iend":I
    goto :goto_2b

    .line 187
    .end local v3    # "iend":I
    :cond_25
    const-string v3, " r0 "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 189
    .restart local v3    # "iend":I
    :goto_2b
    if-gt v3, v2, :cond_35

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 191
    if-gt v3, v2, :cond_35

    .line 192
    const/4 v0, 0x0

    return-object v0

    .line 194
    :cond_35
    add-int v0, v2, p2

    .line 195
    .local v0, "imax":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v0, v4, :cond_3f

    move v4, v0

    goto :goto_43

    :cond_3f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_43
    move v0, v4

    .line 196
    if-gt v3, v0, :cond_48

    move v4, v3

    goto :goto_49

    :cond_48
    move v4, v0

    :goto_49
    move v3, v4

    .line 197
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 199
    .end local v0    # "imax":I
    .end local v1    # "is64Bit":Z
    .end local v2    # "istart":I
    .end local v3    # "iend":I
    :cond_4f
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "istart":I
    if-gez v0, :cond_57

    const/4 v0, 0x0

    goto :goto_59

    .line 201
    :cond_57
    add-int/lit8 v0, v0, 0xb

    .line 202
    :goto_59
    add-int v1, v0, p2

    .line 203
    .local v1, "imax":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_63

    move v2, v1

    goto :goto_67

    :cond_63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_67
    move v1, v2

    .line 204
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initData(Z)V
    .registers 6
    .param p1, "isWait"    # Z

    .line 105
    :try_start_0
    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mSalesCode:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/iaft/IAFDDBManager;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 106
    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/iaft/IAFDDBManager;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    .line 107
    if-eqz p1, :cond_3b

    .line 108
    const/16 v0, 0x14

    .line 109
    .local v0, "waitMs":I
    const/16 v1, 0xa

    .line 110
    .local v1, "maxCnt":I
    :goto_1d
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    if-nez v2, :cond_3b

    if-lez v1, :cond_3b

    .line 111
    const-string v2, "IAFDDiagnosis"

    const-string v3, "initData wait..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 113
    add-int/lit8 v1, v1, -0x1

    .line 114
    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/iaft/IAFDDBManager;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3c

    goto :goto_1d

    .line 120
    .end local v0    # "waitMs":I
    .end local v1    # "maxCnt":I
    :cond_3b
    goto :goto_47

    .line 117
    :catch_3c
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "==IAFD=="

    const-string v2, "initData fail, callstack as the following:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    return-void
.end method

.method private is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "nativeLibraryDir"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;

    .line 482
    move-object v0, p1

    .line 484
    .local v0, "nLibDir":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 485
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 486
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 487
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object v0, v4

    .line 489
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_11
    const-string v2, "arm64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "lib64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_25

    if-eqz v2, :cond_22

    goto :goto_24

    .line 492
    :cond_22
    const/4 v1, 0x1

    return v1

    .line 490
    :cond_24
    :goto_24
    return v1

    .line 493
    :catch_25
    move-exception v2

    .line 494
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private isAllFilesAccessOff(ILjava/lang/String;)Z
    .registers 6
    .param p1, "appuid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 536
    const/4 v0, -0x1

    .line 538
    .local v0, "appOpMode":I
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 539
    .local v1, "aps":Landroid/app/AppOpsManager;
    const-string v2, "android:manage_external_storage"

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_17

    move v0, v2

    .line 540
    if-eqz v0, :cond_16

    const/4 v2, 0x1

    return v2

    .line 543
    .end local v1    # "aps":Landroid/app/AppOpsManager;
    :cond_16
    goto :goto_1b

    .line 541
    :catch_17
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 544
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    const/4 v1, 0x0

    return v1
.end method

.method private isAvalilableSizeNoEnough()Z
    .registers 9

    .line 522
    const-wide/32 v0, 0x8000000

    .line 524
    .local v0, "limitSize":J
    :try_start_3
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 525
    .local v2, "stat":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    .line 526
    .local v3, "blockSize":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_20

    mul-long/2addr v5, v3

    .line 527
    .local v5, "avalilableSize":J
    cmp-long v7, v5, v0

    if-gtz v7, :cond_1f

    .line 528
    const/4 v7, 0x1

    return v7

    .line 531
    .end local v2    # "stat":Landroid/os/StatFs;
    :cond_1f
    goto :goto_24

    .line 529
    .end local v3    # "blockSize":J
    .end local v5    # "avalilableSize":J
    :catch_20
    move-exception v2

    .line 530
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 532
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_24
    const/4 v2, 0x0

    return v2
.end method

.method private isContainExpClassName(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "curflag"    # I

    .line 131
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 133
    :cond_4
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 134
    .local v1, "i":I
    if-gez v1, :cond_f

    const/4 v1, 0x0

    .line 135
    :cond_f
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "sub":Ljava/lang/String;
    if-nez v3, :cond_16

    return v0

    .line 138
    :cond_16
    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    return v0

    .line 139
    :cond_21
    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v4, v4, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 140
    .local v4, "index":I
    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetsupportFlag(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v5

    and-int/2addr v5, p2

    if-eq p2, v5, :cond_3d

    .line 141
    return v0

    .line 142
    :cond_3d
    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v5

    iput v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    .line 143
    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v5, v5, v4

    iput-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 144
    iget-object v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v5, v5, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v5

    if-lez v5, :cond_5e

    .line 145
    return v0

    .line 147
    :cond_5e
    return v2
.end method

.method private isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "tbs"    # [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
    .param p3, "csStr"    # Ljava/lang/String;
    .param p4, "curflag"    # I

    .line 152
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 153
    :cond_4
    array-length v1, p2

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_66

    aget-object v3, p2, v2

    .line 154
    .local v3, "i":Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetenable(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetsupportFlag(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v4

    and-int/2addr v4, p4

    if-ne v4, p4, :cond_63

    .line 155
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetkeyWord(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 156
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4b

    .line 157
    if-nez p3, :cond_2c

    return v0

    .line 158
    :cond_2c
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetrules(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 159
    .local v1, "cnt":I
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_32
    if-ge v2, v1, :cond_4a

    .line 160
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetrules(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {p3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 161
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    return v4

    .line 159
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 164
    :cond_4a
    return v0

    .line 166
    .end local v1    # "cnt":I
    .end local v2    # "j":I
    :cond_4b
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    .line 167
    iput-object v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 168
    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v1

    if-eq v1, v4, :cond_62

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_61

    goto :goto_62

    .line 171
    :cond_61
    return v4

    .line 169
    :cond_62
    :goto_62
    return v0

    .line 153
    .end local v3    # "i":Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 175
    :cond_66
    return v0
.end method

.method private isContainPkgname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "srcStr"    # Ljava/lang/String;
    .param p2, "startStr"    # Ljava/lang/String;
    .param p3, "pkgname"    # Ljava/lang/String;

    .line 329
    const/4 v0, 0x0

    .line 331
    .local v0, "tmpStr":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 332
    .local v1, "istart":I
    const/4 v2, 0x0

    if-gez v1, :cond_9

    return v2

    .line 333
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 334
    if-nez v0, :cond_14

    return v2

    .line 335
    :cond_14
    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 336
    const/4 v2, 0x1

    return v2

    .line 337
    :cond_1c
    return v2
.end method

.method private isNativeCrash(Ljava/lang/String;)Z
    .registers 3
    .param p1, "exceptionClassName"    # Ljava/lang/String;

    .line 126
    const-string v0, "Native crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isRemovableApp(Ljava/lang/String;II)Z
    .registers 12
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "errType"    # I

    .line 500
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 502
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 503
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 504
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v3, v3, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v3}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreMovableAppPaths(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_18
    if-ge v5, v4, :cond_34

    aget-object v6, v3, v5

    .line 505
    .local v6, "path":Ljava/lang/String;
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 506
    const/16 v3, 0x13

    if-ne p3, v3, :cond_2f

    .line 507
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_35

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2f

    .line 508
    return v0

    .line 511
    :cond_2f
    const/4 v0, 0x1

    return v0

    .line 504
    .end local v6    # "path":Ljava/lang/String;
    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 516
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_34
    goto :goto_39

    .line 514
    :catch_35
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_39
    return v0
.end method

.method private parseExpTypeInternal(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "nativeLibraryDir"    # Ljava/lang/String;
    .param p3, "puserId"    # I
    .param p4, "appuid"    # I
    .param p5, "flags"    # I
    .param p6, "exceptionClassName"    # Ljava/lang/String;
    .param p7, "exceptionMessage"    # Ljava/lang/String;
    .param p8, "stackTrace"    # Ljava/lang/String;

    .line 343
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    const-string v8, "IAFDDiagnosis"

    const/4 v9, 0x0

    iput v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->dualUserId:I

    .line 344
    iput-boolean v9, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    .line 345
    if-nez v7, :cond_18

    return v9

    .line 349
    :cond_18
    const/4 v0, 0x1

    :try_start_19
    iput v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    .line 351
    if-eqz v2, :cond_38

    .line 352
    and-int/lit8 v10, v4, 0x1

    if-nez v10, :cond_35

    and-int/lit16 v10, v4, 0x80

    if-nez v10, :cond_35

    const-string v10, "com.samsung."

    .line 353
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_35

    const-string v10, "com.sec."

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_38

    .line 354
    :cond_35
    const/4 v10, 0x2

    iput v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    .line 357
    :cond_38
    invoke-direct {v1, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->initData(Z)V

    .line 358
    const/4 v10, -0x1

    iput v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    .line 359
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 361
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    if-nez v11, :cond_46

    return v9

    .line 362
    :cond_46
    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetenable(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v11

    if-nez v11, :cond_4f

    return v9

    .line 363
    :cond_4f
    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v11, v11, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v11, v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->isInWhiteList(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5a

    return v9

    .line 364
    :cond_5a
    const-string v11, "parseExpType start"

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iput-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    .line 367
    iput-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    .line 368
    iput-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    .line 370
    invoke-direct {v1, v5}, Lcom/sec/android/iaft/IAFDDiagnosis;->isNativeCrash(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_158

    .line 371
    const/4 v11, 0x0

    .local v11, "causeHeaderStr":Ljava/lang/String;
    const/4 v14, 0x0

    .line 372
    .local v14, "backTraceStr":Ljava/lang/String;
    iget-object v15, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v15, v15, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v15}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetNE_cstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v15

    .line 374
    .local v15, "max":I
    invoke-direct {v1, v7, v15, v9}, Lcom/sec/android/iaft/IAFDDiagnosis;->getSubStringForNE(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v14, v16

    .line 375
    invoke-direct {v1, v7, v15, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getSubStringForNE(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, v16

    .line 378
    if-eqz v11, :cond_91

    .line 379
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v12

    invoke-direct {v1, v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis;->getCauseForNE(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    .line 381
    :cond_91
    if-eqz v14, :cond_b0

    .line 382
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    .line 383
    .local v12, "curLen":I
    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    if-le v12, v13, :cond_aa

    .line 384
    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    move v12, v13

    .line 385
    :cond_aa
    invoke-virtual {v14, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    .line 388
    .end local v12    # "curLen":I
    :cond_b0
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    invoke-direct {v1, v12, v14, v13, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getComponent(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    .line 390
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetenableDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v12

    if-eqz v12, :cond_e4

    iget v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetsupportflagDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    and-int/2addr v12, v13

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    if-ne v12, v13, :cond_e4

    .line 391
    invoke-direct {v1, v3, v10}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e4

    .line 392
    const/16 v10, 0x1e

    iput v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    .line 393
    return v0

    .line 397
    :cond_e4
    if-eqz v14, :cond_104

    .line 398
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v14, v12, v14, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_f5

    .line 399
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 400
    :cond_f5
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v14, v12, v14, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_104

    .line 401
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 404
    :cond_104
    if-eqz v11, :cond_115

    .line 405
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v11, v12, v14, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_115

    .line 406
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 409
    :cond_115
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    if-eqz v12, :cond_156

    .line 411
    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    if-ne v12, v0, :cond_13a

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne v12, v13, :cond_13a

    .line 412
    iget-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetNE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v14, v10, v2}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainPkgname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_156

    .line 413
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 415
    :cond_13a
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_156

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne v12, v13, :cond_156

    .line 416
    invoke-direct {v1, v3, v10}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_156

    .line 417
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 420
    .end local v11    # "causeHeaderStr":Ljava/lang/String;
    .end local v14    # "backTraceStr":Ljava/lang/String;
    :cond_156
    goto/16 :goto_279

    .line 421
    .end local v15    # "max":I
    :cond_158
    const-string v11, ""

    .line 423
    .local v11, "subCsStr":Ljava/lang/String;
    if-eqz v6, :cond_179

    .line 424
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v12

    .line 425
    .restart local v12    # "curLen":I
    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    if-le v12, v13, :cond_173

    .line 426
    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    move v12, v13

    .line 427
    :cond_173
    invoke-virtual {v6, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    .line 428
    .end local v12    # "curLen":I
    :cond_179
    if-eqz v7, :cond_1ae

    .line 429
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetJE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetJE_cstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    invoke-direct {v1, v7, v12, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->getCallstackForJE(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 430
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 431
    .restart local v12    # "curLen":I
    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    if-le v12, v13, :cond_1a7

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetcallstack_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    goto :goto_1a8

    :cond_1a7
    move v13, v12

    :goto_1a8
    invoke-virtual {v11, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->callstack:Ljava/lang/String;

    .line 435
    .end local v12    # "curLen":I
    :cond_1ae
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->reason:Ljava/lang/String;

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetreason_maxSize(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    invoke-direct {v1, v12, v11, v13, v9}, Lcom/sec/android/iaft/IAFDDiagnosis;->getComponent(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->component:Ljava/lang/String;

    .line 437
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetenableDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v12

    if-eqz v12, :cond_1e2

    iget v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    iget-object v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v13, v13, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetsupportflagDetectAll32bitApps(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)I

    move-result v13

    and-int/2addr v12, v13

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    if-ne v12, v13, :cond_1e2

    .line 438
    invoke-direct {v1, v3, v10}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e2

    .line 439
    const/16 v10, 0x1e

    iput v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    .line 440
    return v0

    .line 444
    :cond_1e2
    iget v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v5, v12}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpClassName(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1ed

    .line 445
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 448
    :cond_1ed
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v6, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_1fc

    .line 449
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 451
    :cond_1fc
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v6, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_20b

    .line 452
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 455
    :cond_20b
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v11, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_21a

    .line 456
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 457
    :cond_21a
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v11, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_229

    .line 458
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 459
    :cond_229
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v12, v12, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curAppFlag:I

    invoke-direct {v1, v11, v12, v11, v13}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainExpInfo(Ljava/lang/String;[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_238

    .line 460
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 462
    :cond_238
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    if-eqz v12, :cond_279

    .line 464
    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    if-ne v12, v0, :cond_25d

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne v12, v13, :cond_25d

    .line 465
    iget-object v10, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetJE_cstack_start(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v11, v10, v2}, Lcom/sec/android/iaft/IAFDDiagnosis;->isContainPkgname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_279

    .line 466
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0

    .line 468
    :cond_25d
    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetruleType(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_279

    iget-object v12, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->curExpEntity:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    invoke-static {v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;->-$$Nest$fgetexpID(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;)I

    move-result v12

    iget v13, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    if-ne v12, v13, :cond_279

    .line 469
    invoke-direct {v1, v3, v10}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_279

    .line 470
    iput-boolean v0, v1, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_278} :catch_27a

    return v0

    .line 477
    .end local v11    # "subCsStr":Ljava/lang/String;
    :cond_279
    :goto_279
    goto :goto_283

    .line 474
    :catch_27a
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "parseExpType fail, skip, callstack as the following:"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_283
    return v9
.end method

.method private parseExpTypeInternalForRepairOnlyShow(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 592
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetisSupportRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 593
    return v1

    .line 594
    :cond_c
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "keyStr":[Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 596
    const/4 v2, 0x6

    aget-object v2, v0, v2

    const-string v3, "Only32bit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 597
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->is32BitApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 598
    return v1

    .line 601
    :cond_29
    const/4 v1, 0x1

    return v1

    .line 603
    :cond_2b
    return v1
.end method


# virtual methods
.method public getExpType()I
    .registers 3

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExpType() expType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAFDDiagnosis"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    return v0
.end method

.method public getParseStatus()Z
    .registers 3

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IAFDDiagnosis Parse successful,expType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAFDDiagnosis"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isParseSuccess:Z

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mSalesCode:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.sm_cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/iaft/IAFDDiagnosis;->initData(Z)V

    .line 99
    return-void
.end method

.method public parseExpType(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "nativeLibraryDir"    # Ljava/lang/String;
    .param p3, "puserId"    # I
    .param p4, "appuid"    # I
    .param p5, "flags"    # I
    .param p6, "exceptionClassName"    # Ljava/lang/String;
    .param p7, "exceptionMessage"    # Ljava/lang/String;
    .param p8, "stackTrace"    # Ljava/lang/String;

    .line 550
    const/4 v0, 0x0

    :try_start_1
    invoke-direct/range {p0 .. p8}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpTypeInternal(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x27

    const/4 v3, 0x1

    if-eqz v1, :cond_4a

    .line 551
    iget v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    sparse-switch v1, :sswitch_data_56

    .line 574
    invoke-direct {p0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpTypeInternalForRepairOnlyShow(Ljava/lang/String;)Z

    move-result v1

    goto :goto_45

    .line 564
    :sswitch_14
    iput p3, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->dualUserId:I

    .line 565
    return v3

    .line 567
    :sswitch_17
    iget-boolean v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    if-eqz v1, :cond_24

    .line 568
    const/16 v1, 0x22

    invoke-direct {p0, v1, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->getRepairType(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_24

    .line 569
    return v0

    .line 570
    :cond_24
    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->isAvalilableSizeNoEnough()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 571
    return v3

    .line 559
    :sswitch_2b
    invoke-direct {p0, p4, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->isAllFilesAccessOff(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 560
    return v3

    .line 554
    :sswitch_32
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v1, v1, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetwebView_pkgName(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x100000

    const/16 v4, 0x13

    invoke-direct {p0, v1, v2, v4}, Lcom/sec/android/iaft/IAFDDiagnosis;->isRemovableApp(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 555
    return v3

    .line 574
    :goto_45
    if-eqz v1, :cond_49

    .line 575
    iput v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I

    .line 577
    :cond_49
    return v3

    .line 580
    :cond_4a
    invoke-direct {p0, p1}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpTypeInternalForRepairOnlyShow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 581
    iput v2, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->expType:I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_52} :catch_54

    .line 582
    return v3

    .line 588
    :cond_53
    goto :goto_55

    .line 585
    :catch_54
    move-exception v1

    .line 589
    :goto_55
    return v0

    :sswitch_data_56
    .sparse-switch
        0x13 -> :sswitch_32
        0x1b -> :sswitch_2b
        0x22 -> :sswitch_17
        0x23 -> :sswitch_14
    .end sparse-switch
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public showIAFDCrashDialogs(IILjava/lang/String;)Z
    .registers 15
    .param p1, "puserId"    # I
    .param p2, "appuid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 637
    const-string v0, "com.sec.android.iaft.IAFDService"

    const/4 v1, 0x0

    .line 640
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v3

    invoke-direct {p0, v3, p3}, Lcom/sec/android/iaft/IAFDDiagnosis;->getRepairType(ILjava/lang/String;)I

    move-result v3

    .line 641
    .local v3, "repairType":I
    const/4 v4, 0x1

    if-nez v3, :cond_2f

    .line 642
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.android.sm.ACTION_START_THIRD_APP_ERROR_DIALOG"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 643
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v5, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v6, "com.samsung.android.lool"

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    const-string v0, "IAFDDiagnosis"

    const-string v5, "Show3rdAppErrorUiExt() startService SM"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_118

    .line 646
    :cond_2f
    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, "strkey":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    .line 648
    const-string v6, "com.sec.android.iaft"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v0

    const/16 v6, 0x27

    if-ne v0, v6, :cond_4b

    .line 650
    move-object v5, p3

    .line 652
    :cond_4b
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v0, v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v0, v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->gethashMapOfRepairDBInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "values":[Ljava/lang/String;
    const-string v6, "onekey"

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5b} :catch_19a

    const/4 v7, 0x3

    const/4 v8, 0x2

    const-string v9, "OneKeyRepairMode"

    if-eqz v6, :cond_65

    .line 655
    :try_start_61
    invoke-virtual {v1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_76

    .line 656
    :cond_65
    const-string v6, "onejump"

    aget-object v10, v0, v4

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 657
    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_76

    .line 659
    :cond_73
    invoke-virtual {v1, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 662
    :goto_76
    const-string v6, "0"

    aget-object v8, v0, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_7e} :catch_19a

    const-string v8, "CheckUpdateFlag"

    if-eqz v6, :cond_86

    .line 663
    :try_start_82
    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_89

    .line 665
    :cond_86
    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 668
    :goto_89
    const/4 v6, 0x4

    .line 669
    .local v6, "lanIndex":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 670
    .local v8, "lan":Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v9, v9, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v9}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetmainLanguage(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a1

    .line 671
    const/4 v6, 0x5

    .line 673
    :cond_a1
    const-string v9, "null"

    iget-object v10, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetdomainRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d9

    .line 674
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetprefixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetpostfixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "targetUrlTmp":Ljava/lang/String;
    goto :goto_10c

    .line 676
    .end local v9    # "targetUrlTmp":Ljava/lang/String;
    :cond_d9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetdomainRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetprefixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mIFADData:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    iget-object v10, v10, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->-$$Nest$fgetpostfixRepair(Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 678
    .restart local v9    # "targetUrlTmp":Ljava/lang/String;
    :goto_10c
    const-string v10, "targetUrl"

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string v10, "repairTrigAPP"

    aget-object v7, v0, v7

    invoke-virtual {v1, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "strkey":Ljava/lang/String;
    .end local v6    # "lanIndex":I
    .end local v8    # "lan":Ljava/lang/String;
    .end local v9    # "targetUrlTmp":Ljava/lang/String;
    :goto_118
    const-string v0, "pkgName"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    const-string v0, "userId"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getExpType()I

    move-result v5

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 684
    const-string v0, "repeat"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 685
    const-string v0, "component"

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getComponent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    const-string v0, "error_stack"

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDiagnosis;->getCallstack()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const-string v0, "pkgUserId"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 688
    const-string v0, "repairType"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    const-string v0, "dualUserId"

    iget v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->dualUserId:I

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 690
    const-string v0, "isCHNModel"

    iget-boolean v5, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->isCHNModel:Z

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 691
    if-lez v3, :cond_194

    .line 692
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_162} :catch_19a

    .line 694
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :try_start_162
    invoke-virtual {v0, p3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 695
    .local v5, "pmInfo":Landroid/content/pm/PackageInfo;
    const-string v6, "versionCode"

    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 696
    const-string v6, "versionName"

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v6, "appName"

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-string v6, "hasUpdate"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_18a} :catch_18b

    .line 701
    .end local v5    # "pmInfo":Landroid/content/pm/PackageInfo;
    goto :goto_18f

    .line 699
    :catch_18b
    move-exception v5

    .line 700
    .local v5, "e":Ljava/lang/Exception;
    :try_start_18c
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 702
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_18f
    const-string v5, "commandType"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_194
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_199} :catch_19a

    .line 705
    return v4

    .line 706
    .end local v3    # "repairType":I
    :catch_19a
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 710
    .end local v0    # "e":Ljava/lang/Exception;
    return v2
.end method
