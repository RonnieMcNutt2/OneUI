.class public Lcom/android/internal/power/ModemPowerProfile;
.super Ljava/lang/Object;
.source "ModemPowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/power/ModemPowerProfile$ModemNrFrequencyRange;,
        Lcom/android/internal/power/ModemPowerProfile$ModemRatType;,
        Lcom/android/internal/power/ModemPowerProfile$ModemTxLevel;,
        Lcom/android/internal/power/ModemPowerProfile$ModemDrainType;
    }
.end annotation


# static fields
.field private static final ATTR_LEVEL:Ljava/lang/String; = "level"

.field private static final ATTR_NR_FREQUENCY:Ljava/lang/String; = "nrFrequency"

.field private static final ATTR_RAT:Ljava/lang/String; = "rat"

.field public static final MODEM_DRAIN_TYPE_IDLE:I = 0x10000000

.field private static final MODEM_DRAIN_TYPE_MASK:I = -0x10000000

.field private static final MODEM_DRAIN_TYPE_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODEM_DRAIN_TYPE_RX:I = 0x20000000

.field public static final MODEM_DRAIN_TYPE_SLEEP:I = 0x0

.field public static final MODEM_DRAIN_TYPE_TX:I = 0x30000000

.field public static final MODEM_NR_FREQUENCY_RANGE_DEFAULT:I = 0x0

.field public static final MODEM_NR_FREQUENCY_RANGE_HIGH:I = 0x30000

.field public static final MODEM_NR_FREQUENCY_RANGE_LOW:I = 0x10000

.field private static final MODEM_NR_FREQUENCY_RANGE_MASK:I = 0xf0000

.field public static final MODEM_NR_FREQUENCY_RANGE_MID:I = 0x20000

.field public static final MODEM_NR_FREQUENCY_RANGE_MMWAVE:I = 0x40000

.field private static final MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODEM_RAT_TYPE_DEFAULT:I = 0x0

.field public static final MODEM_RAT_TYPE_LTE:I = 0x100000

.field private static final MODEM_RAT_TYPE_MASK:I = 0xf00000

.field private static final MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODEM_RAT_TYPE_NR:I = 0x200000

.field public static final MODEM_TX_LEVEL_0:I = 0x0

.field public static final MODEM_TX_LEVEL_1:I = 0x1000000

.field public static final MODEM_TX_LEVEL_2:I = 0x2000000

.field public static final MODEM_TX_LEVEL_3:I = 0x3000000

.field public static final MODEM_TX_LEVEL_4:I = 0x4000000

.field private static final MODEM_TX_LEVEL_COUNT:I = 0x5

.field private static final MODEM_TX_LEVEL_MAP:[I

.field private static final MODEM_TX_LEVEL_MASK:I = 0xf000000

.field private static final MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ModemPowerProfile"

.field private static final TAG_ACTIVE:Ljava/lang/String; = "active"

.field private static final TAG_IDLE:Ljava/lang/String; = "idle"

.field private static final TAG_RECEIVE:Ljava/lang/String; = "receive"

.field private static final TAG_SLEEP:Ljava/lang/String; = "sleep"

.field private static final TAG_TRANSMIT:Ljava/lang/String; = "transmit"


# instance fields
.field private final mPowerConstants:Landroid/util/SparseDoubleArray;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_DRAIN_TYPE_NAMES:Landroid/util/SparseArray;

    .line 110
    const-string v1, "SLEEP"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    const/high16 v1, 0x10000000

    const-string v3, "IDLE"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    const/high16 v1, 0x20000000

    const-string v3, "RX"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    const/high16 v1, 0x30000000

    const-string v3, "TX"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;

    .line 161
    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    const-string v3, "1"

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    const-string v3, "2"

    const/high16 v5, 0x2000000

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    const-string v3, "3"

    const/high16 v6, 0x3000000

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    const-string v3, "4"

    const/high16 v7, 0x4000000

    invoke-virtual {v0, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    filled-new-array {v2, v4, v5, v6, v7}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_MAP:[I

    .line 200
    new-instance v0, Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;

    .line 202
    const-string v3, "DEFAULT"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    const/high16 v4, 0x100000

    const-string v5, "LTE"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    const/high16 v4, 0x200000

    const-string v5, "NR"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    .line 245
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    const/high16 v1, 0x10000

    const-string v2, "LOW"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    const/high16 v1, 0x20000

    const-string v2, "MID"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    const/high16 v1, 0x30000

    const-string v2, "HIGH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    const/high16 v1, 0x40000

    const-string v2, "MMWAVE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseDoubleArray;

    invoke-direct {v0}, Landroid/util/SparseDoubleArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    .line 253
    return-void
.end method

.method private static appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p3, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 448
    .local p2, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 451
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_23

    .line 452
    const-string v1, "UNKNOWN(0x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 456
    :cond_23
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :goto_26
    return-void
.end method

.method private static getTypeFromAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/util/SparseArray;)I
    .registers 10
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "attr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 343
    .local p2, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 346
    const/4 v1, 0x0

    return v1

    .line 348
    :cond_8
    const/4 v1, -0x1

    .line 349
    .local v1, "index":I
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 351
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_1e

    .line 352
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 353
    move v1, v3

    .line 351
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 356
    .end local v3    # "i":I
    :cond_1e
    if-gez v1, :cond_61

    .line 357
    new-array v3, v2, [Ljava/lang/String;

    .line 358
    .local v3, "stringNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    if-ge v4, v2, :cond_30

    .line 359
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 358
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 361
    .end local v4    # "i":I
    :cond_30
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Acceptable values are "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 363
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 365
    .end local v3    # "stringNames":[Ljava/lang/String;
    :cond_61
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    return v3
.end method

.method public static keyToString(I)Ljava/lang/String;
    .registers 7
    .param p0, "key"    # I

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/high16 v1, -0x10000000

    and-int/2addr v1, p0

    .line 427
    .local v1, "drainType":I
    const-string v2, "drain"

    sget-object v3, Lcom/android/internal/power/ModemPowerProfile;->MODEM_DRAIN_TYPE_NAMES:Landroid/util/SparseArray;

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/power/ModemPowerProfile;->appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V

    .line 428
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const/high16 v3, 0x30000000

    if-ne v1, v3, :cond_26

    .line 431
    const/high16 v3, 0xf000000

    and-int/2addr v3, p0

    .line 432
    .local v3, "txLevel":I
    const-string/jumbo v4, "level"

    sget-object v5, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_NAMES:Landroid/util/SparseArray;

    invoke-static {v0, v4, v5, v3}, Lcom/android/internal/power/ModemPowerProfile;->appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V

    .line 433
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .end local v3    # "txLevel":I
    :cond_26
    const/high16 v3, 0xf00000

    and-int/2addr v3, p0

    .line 437
    .local v3, "ratType":I
    const-string v4, "RAT"

    sget-object v5, Lcom/android/internal/power/ModemPowerProfile;->MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;

    invoke-static {v0, v4, v5, v3}, Lcom/android/internal/power/ModemPowerProfile;->appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V

    .line 439
    const/high16 v4, 0x200000

    if-ne v3, v4, :cond_42

    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const/high16 v2, 0xf0000

    and-int/2addr v2, p0

    .line 442
    .local v2, "nrFreq":I
    const-string/jumbo v4, "nrFreq"

    sget-object v5, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    invoke-static {v0, v4, v5, v2}, Lcom/android/internal/power/ModemPowerProfile;->appendFieldToString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/util/SparseArray;I)V

    .line 444
    .end local v2    # "nrFreq":I
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseActivePowerConstantsFromXml(Landroid/content/res/XmlResourceParser;)V
    .registers 12
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 294
    const-string v0, "ModemPowerProfile"

    :try_start_2
    const-string/jumbo v1, "rat"

    sget-object v2, Lcom/android/internal/power/ModemPowerProfile;->MODEM_RAT_TYPE_NAMES:Landroid/util/SparseArray;

    invoke-static {p1, v1, v2}, Lcom/android/internal/power/ModemPowerProfile;->getTypeFromAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/util/SparseArray;)I

    move-result v1

    .line 295
    .local v1, "ratType":I
    const/high16 v2, 0x200000

    if-ne v1, v2, :cond_19

    .line 296
    const-string/jumbo v2, "nrFrequency"

    sget-object v3, Lcom/android/internal/power/ModemPowerProfile;->MODEM_NR_FREQUENCY_RANGE_NAMES:Landroid/util/SparseArray;

    invoke-static {p1, v2, v3}, Lcom/android/internal/power/ModemPowerProfile;->getTypeFromAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/util/SparseArray;)I

    move-result v2
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_18} :catch_c2

    .local v2, "nrfType":I
    goto :goto_1a

    .line 299
    .end local v2    # "nrfType":I
    :cond_19
    const/4 v2, 0x0

    .line 304
    .restart local v2    # "nrfType":I
    :goto_1a
    nop

    .line 307
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 308
    .local v3, "depth":I
    :goto_1f
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 309
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_ca

    :cond_31
    goto :goto_48

    :sswitch_32
    const-string/jumbo v5, "transmit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    const/4 v5, 0x1

    goto :goto_49

    :sswitch_3d
    const-string/jumbo v5, "receive"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    const/4 v5, 0x0

    goto :goto_49

    :goto_48
    move v5, v6

    :goto_49
    const/4 v7, 0x4

    packed-switch v5, :pswitch_data_d4

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected element parsed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    .line 320
    :pswitch_64
    const-string/jumbo v5, "level"

    invoke-static {p1, v5, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 321
    .local v5, "level":I
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-eq v6, v7, :cond_72

    .line 322
    goto :goto_1f

    .line 324
    :cond_72
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, "txDrain":Ljava/lang/String;
    if-ltz v5, :cond_89

    const/4 v8, 0x5

    if-lt v5, v8, :cond_7c

    goto :goto_89

    .line 331
    :cond_7c
    sget-object v7, Lcom/android/internal/power/ModemPowerProfile;->MODEM_TX_LEVEL_MAP:[I

    aget v7, v7, v5

    .line 332
    .local v7, "modemTxLevel":I
    const/high16 v8, 0x30000000

    or-int/2addr v8, v7

    or-int/2addr v8, v1

    or-int/2addr v8, v2

    .line 333
    .local v8, "txKey":I
    invoke-virtual {p0, v8, v6}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 334
    goto :goto_bf

    .line 326
    .end local v7    # "modemTxLevel":I
    .end local v8    # "txKey":I
    :cond_89
    :goto_89
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected tx level: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Must be between 0 and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    goto/16 :goto_1f

    .line 312
    .end local v5    # "level":I
    .end local v6    # "txDrain":Ljava/lang/String;
    :pswitch_ab
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    if-eq v5, v7, :cond_b3

    .line 313
    goto/16 :goto_1f

    .line 315
    :cond_b3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "rxDrain":Ljava/lang/String;
    const/high16 v6, 0x20000000

    or-int/2addr v6, v1

    or-int/2addr v6, v2

    .line 317
    .local v6, "rxKey":I
    invoke-virtual {p0, v6, v5}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 318
    nop

    .line 338
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "rxDrain":Ljava/lang/String;
    .end local v6    # "rxKey":I
    :goto_bf
    goto/16 :goto_1f

    .line 339
    :cond_c1
    return-void

    .line 301
    .end local v1    # "ratType":I
    .end local v2    # "nrfType":I
    .end local v3    # "depth":I
    :catch_c2
    move-exception v1

    .line 302
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    const-string v2, "Failed parse to active modem power constants"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    return-void

    nop

    :sswitch_data_ca
    .sparse-switch
        0x408272e3 -> :sswitch_3d
        0x4c58d2b0 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_64
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v0}, Landroid/util/SparseDoubleArray;->clear()V

    .line 465
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 472
    iget-object v0, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v0}, Landroid/util/SparseDoubleArray;->size()I

    move-result v0

    .line 473
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_27

    .line 474
    iget-object v2, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseDoubleArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/power/ModemPowerProfile;->keyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseDoubleArray;->valueAt(I)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(D)V

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 478
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method public getAverageBatteryDrainMa(I)D
    .registers 9
    .param p1, "key"    # I

    .line 392
    move v0, p1

    .line 394
    .local v0, "bestKey":I
    iget-object v1, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v1, v0, v2, v3}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v4

    .line 395
    .local v4, "value":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_10

    return-wide v4

    .line 399
    :cond_10
    const/high16 v1, 0xf0000

    and-int/2addr v1, v0

    if-eqz v1, :cond_28

    .line 401
    const v1, -0xf0001

    and-int/2addr v0, v1

    .line 402
    or-int/lit8 v0, v0, 0x0

    .line 403
    iget-object v1, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v1, v0, v2, v3}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v4

    .line 404
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_28

    return-wide v4

    .line 407
    :cond_28
    const/high16 v1, 0xf00000

    and-int/2addr v1, v0

    if-eqz v1, :cond_40

    .line 409
    const v1, -0xf00001

    and-int/2addr v0, v1

    .line 410
    or-int/lit8 v0, v0, 0x0

    .line 411
    iget-object v1, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-virtual {v1, v0, v2, v3}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v4

    .line 412
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_40

    return-wide v4

    .line 415
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAverageBatteryDrainMaH called with unexpected key: 0x"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 417
    invoke-static {p1}, Lcom/android/internal/power/ModemPowerProfile;->keyToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    const-string v6, "ModemPowerProfile"

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-wide v2
.end method

.method public parseFromXml(Landroid/content/res/XmlResourceParser;)V
    .registers 7
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 261
    .local v0, "depth":I
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 262
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_7c

    :cond_16
    goto :goto_37

    :sswitch_17
    const-string/jumbo v2, "sleep"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v3

    goto :goto_38

    :sswitch_22
    const-string/jumbo v2, "idle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_38

    :sswitch_2d
    const-string v2, "active"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x2

    goto :goto_38

    :goto_37
    const/4 v2, -0x1

    :goto_38
    const/4 v4, 0x4

    packed-switch v2, :pswitch_data_8a

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected element parsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ModemPowerProfile"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 279
    :pswitch_55
    invoke-direct {p0, p1}, Lcom/android/internal/power/ModemPowerProfile;->parseActivePowerConstantsFromXml(Landroid/content/res/XmlResourceParser;)V

    .line 280
    goto :goto_79

    .line 272
    :pswitch_59
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    if-eq v2, v4, :cond_60

    .line 273
    goto :goto_4

    .line 275
    :cond_60
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "idleDrain":Ljava/lang/String;
    const/high16 v3, 0x10000000

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 277
    goto :goto_79

    .line 265
    .end local v2    # "idleDrain":Ljava/lang/String;
    :pswitch_6a
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    if-eq v2, v4, :cond_71

    .line 266
    goto :goto_4

    .line 268
    :cond_71
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "sleepDrain":Ljava/lang/String;
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/power/ModemPowerProfile;->setPowerConstant(ILjava/lang/String;)V

    .line 270
    nop

    .line 284
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "sleepDrain":Ljava/lang/String;
    :goto_79
    goto :goto_4

    .line 285
    :cond_7a
    return-void

    nop

    :sswitch_data_7c
    .sparse-switch
        -0x54d080fa -> :sswitch_2d
        0x313fd4 -> :sswitch_22
        0x6872ed7 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_59
        :pswitch_55
    .end packed-switch
.end method

.method public setPowerConstant(ILjava/lang/String;)V
    .registers 6
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/power/ModemPowerProfile;->mPowerConstants:Landroid/util/SparseDoubleArray;

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseDoubleArray;->put(ID)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 381
    goto :goto_43

    .line 378
    :catch_e
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set power constant 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 380
    invoke-static {p1}, Lcom/android/internal/power/ModemPowerProfile;->keyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    const-string v2, "ModemPowerProfile"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_43
    return-void
.end method
