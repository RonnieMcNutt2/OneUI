.class public final Landroid/os/VibrationAttributes;
.super Ljava/lang/Object;
.source "VibrationAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationAttributes$Builder;,
        Landroid/os/VibrationAttributes$Flag;,
        Landroid/os/VibrationAttributes$Usage;,
        Landroid/os/VibrationAttributes$UsageClass;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ALL_SUPPORTED:I = 0xf

.field public static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x1

.field public static final FLAG_BYPASS_USER_VIBRATION_INTENSITY_OFF:I = 0x2

.field public static final FLAG_INVALIDATE_SETTINGS_CACHE:I = 0x4

.field public static final FLAG_PIPELINED_EFFECT:I = 0x8

.field public static final FLATTEN_TAGS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VibrationAttributes"

.field public static final USAGE_ACCESSIBILITY:I = 0x42

.field public static final USAGE_ALARM:I = 0x11

.field public static final USAGE_CLASS_ALARM:I = 0x1

.field public static final USAGE_CLASS_FEEDBACK:I = 0x2

.field public static final USAGE_CLASS_MASK:I = 0xf

.field public static final USAGE_CLASS_MEDIA:I = 0x3

.field public static final USAGE_CLASS_UNKNOWN:I = 0x0

.field public static final USAGE_COMMUNICATION_REQUEST:I = 0x41

.field public static final USAGE_FILTER_MATCH_ALL:I = -0x1

.field public static final USAGE_HARDWARE_FEEDBACK:I = 0x32

.field public static final USAGE_MEDIA:I = 0x13

.field public static final USAGE_NOTIFICATION:I = 0x31

.field public static final USAGE_PHYSICAL_EMULATION:I = 0x22

.field public static final USAGE_RINGTONE:I = 0x21

.field public static final USAGE_TOUCH:I = 0x12

.field public static final USAGE_UNKNOWN:I


# instance fields
.field private final mFlags:I

.field private mFormattedTags:Ljava/lang/String;

.field private final mOriginalAudioUsage:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsage:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmFlags(Landroid/os/VibrationAttributes;)I
    .registers 1

    iget p0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalAudioUsage(Landroid/os/VibrationAttributes;)I
    .registers 1

    iget p0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTags(Landroid/os/VibrationAttributes;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsage(Landroid/os/VibrationAttributes;)I
    .registers 1

    iget p0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFormattedTags(Landroid/os/VibrationAttributes;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTags(Landroid/os/VibrationAttributes;Ljava/util/HashSet;)V
    .registers 2

    iput-object p1, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 342
    new-instance v0, Landroid/os/VibrationAttributes$1;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$1;-><init>()V

    sput-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(III)V
    .registers 5
    .param p1, "usage"    # I
    .param p2, "audioUsage"    # I
    .param p3, "flags"    # I

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p1, p0, Landroid/os/VibrationAttributes;->mUsage:I

    .line 229
    iput p2, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 230
    and-int/lit8 v0, p3, 0xf

    iput v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    .line 231
    return-void
.end method

.method synthetic constructor <init>(IIILandroid/os/VibrationAttributes-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/os/VibrationAttributes;-><init>(III)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "src"    # Landroid/os/Parcel;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1f

    move v0, v1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 327
    .local v0, "hasFlattenedTags":Z
    :goto_20
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    .line 328
    if-eqz v0, :cond_35

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    .line 330
    iget-object v2, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 332
    :cond_35
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "tagsArray":[Ljava/lang/String;
    array-length v3, v2

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_3b
    if-ltz v3, :cond_47

    .line 334
    iget-object v1, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v3, v3, -0x1

    goto :goto_3b

    .line 336
    .end local v3    # "i":I
    :cond_47
    const-string v1, ";"

    iget-object v3, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    .line 339
    .end local v0    # "hasFlattenedTags":Z
    .end local v2    # "tagsArray":[Ljava/lang/String;
    :goto_51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/VibrationAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createForUsage(I)Landroid/os/VibrationAttributes;
    .registers 2
    .param p0, "usage"    # I

    .line 219
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static usageToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "usage"    # I

    .line 392
    sparse-switch p0, :sswitch_data_36

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 398
    :sswitch_18
    const-string v0, "ACCESSIBILITY"

    return-object v0

    .line 404
    :sswitch_1b
    const-string v0, "COMMUNICATION_REQUEST"

    return-object v0

    .line 412
    :sswitch_1e
    const-string v0, "HARDWARE_FEEDBACK"

    return-object v0

    .line 402
    :sswitch_21
    const-string v0, "NOTIFICATION"

    return-object v0

    .line 410
    :sswitch_24
    const-string v0, "PHYSICAL_EMULATION"

    return-object v0

    .line 400
    :sswitch_27
    const-string v0, "RINGTONE"

    return-object v0

    .line 406
    :sswitch_2a
    const-string v0, "MEDIA"

    return-object v0

    .line 408
    :sswitch_2d
    const-string v0, "TOUCH"

    return-object v0

    .line 396
    :sswitch_30
    const-string v0, "ALARM"

    return-object v0

    .line 394
    :sswitch_33
    const-string v0, "UNKNOWN"

    return-object v0

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_33
        0x11 -> :sswitch_30
        0x12 -> :sswitch_2d
        0x13 -> :sswitch_2a
        0x21 -> :sswitch_27
        0x22 -> :sswitch_24
        0x31 -> :sswitch_21
        0x32 -> :sswitch_1e
        0x41 -> :sswitch_1b
        0x42 -> :sswitch_18
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 353
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 354
    return v0

    .line 356
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 359
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/os/VibrationAttributes;

    .line 361
    .local v2, "rhs":Landroid/os/VibrationAttributes;
    iget v3, p0, Landroid/os/VibrationAttributes;->mUsage:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mUsage:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/os/VibrationAttributes;->mFlags:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mFlags:I

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object v4, v2, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    .line 362
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    .line 361
    :goto_33
    return v0

    .line 357
    .end local v2    # "rhs":Landroid/os/VibrationAttributes;
    :cond_34
    :goto_34
    return v1
.end method

.method public getAudioUsage()I
    .registers 2

    .line 274
    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    if-eqz v0, :cond_5

    .line 276
    return v0

    .line 279
    :cond_5
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    sparse-switch v0, :sswitch_data_1c

    .line 295
    const/4 v0, 0x0

    return v0

    .line 291
    :sswitch_c
    const/16 v0, 0xb

    return v0

    .line 283
    :sswitch_f
    const/4 v0, 0x2

    return v0

    .line 281
    :sswitch_11
    const/4 v0, 0x5

    return v0

    .line 285
    :sswitch_13
    const/4 v0, 0x6

    return v0

    .line 293
    :sswitch_15
    const/4 v0, 0x1

    return v0

    .line 287
    :sswitch_17
    const/16 v0, 0xd

    return v0

    .line 289
    :sswitch_1a
    const/4 v0, 0x4

    return v0

    :sswitch_data_1c
    .sparse-switch
        0x11 -> :sswitch_1a
        0x12 -> :sswitch_17
        0x13 -> :sswitch_15
        0x21 -> :sswitch_13
        0x31 -> :sswitch_11
        0x41 -> :sswitch_f
        0x42 -> :sswitch_c
    .end sparse-switch
.end method

.method public getFlags()I
    .registers 2

    .line 255
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return v0
.end method

.method public getTags()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUsage()I
    .registers 2

    .line 246
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return v0
.end method

.method public getUsageClass()I
    .registers 2

    .line 238
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public hasTag(Ljava/lang/String;)Z
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 604
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 371
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFlagSet(I)Z
    .registers 3
    .param p1, "flag"    # I

    .line 263
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    and-int/2addr v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibrationAttributes: Usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 379
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->usageToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Audio Usage= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    .line 380
    invoke-static {v1}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    return-object v0
.end method

.method public usageToString()Ljava/lang/String;
    .registers 2

    .line 387
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-static {v0}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 306
    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget v0, p0, Landroid/os/VibrationAttributes;->mOriginalAudioUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    and-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_29

    .line 312
    iget-object v0, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 313
    .local v0, "tagsArray":[Ljava/lang/String;
    iget-object v1, p0, Landroid/os/VibrationAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 314
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .end local v0    # "tagsArray":[Ljava/lang/String;
    goto :goto_34

    .line 315
    :cond_29
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 316
    iget-object v0, p0, Landroid/os/VibrationAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_35

    .line 315
    :cond_34
    :goto_34
    nop

    .line 319
    :goto_35
    return-void
.end method
