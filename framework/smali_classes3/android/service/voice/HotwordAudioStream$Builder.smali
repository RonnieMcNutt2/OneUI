.class public final Landroid/service/voice/HotwordAudioStream$Builder;
.super Landroid/service/voice/HotwordAudioStream$BaseBuilder;
.source "HotwordAudioStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordAudioStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioFormat:Landroid/media/AudioFormat;

.field private mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mBuilderFieldsSet:J

.field private mInitialAudio:[B

.field private mMetadata:Landroid/os/PersistableBundle;

.field private mTimestamp:Landroid/media/AudioTimestamp;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBuilderFieldsSet(Landroid/service/voice/HotwordAudioStream$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmBuilderFieldsSet(Landroid/service/voice/HotwordAudioStream$Builder;J)V
    .registers 3

    iput-wide p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInitialAudio(Landroid/service/voice/HotwordAudioStream$Builder;[B)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mInitialAudio:[B

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;
    .param p2, "audioStreamParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;

    .line 442
    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream$BaseBuilder;-><init>()V

    .line 420
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    .line 443
    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    .line 444
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 446
    iput-object p2, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 447
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    .line 544
    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 548
    return-void

    .line 545
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/service/voice/HotwordAudioStream;
    .registers 8

    .line 522
    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream$Builder;->checkNotUsed()V

    .line 523
    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    .line 525
    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 526
    invoke-static {}, Landroid/service/voice/HotwordAudioStream;->-$$Nest$smdefaultTimestamp()Landroid/media/AudioTimestamp;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mTimestamp:Landroid/media/AudioTimestamp;

    .line 528
    :cond_19
    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    .line 529
    invoke-static {}, Landroid/service/voice/HotwordAudioStream;->-$$Nest$smdefaultMetadata()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mMetadata:Landroid/os/PersistableBundle;

    .line 531
    :cond_28
    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    .line 532
    invoke-static {}, Landroid/service/voice/HotwordAudioStream;->-$$Nest$smdefaultInitialAudio()[B

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mInitialAudio:[B

    .line 534
    :cond_37
    new-instance v0, Landroid/service/voice/HotwordAudioStream;

    iget-object v2, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    iget-object v3, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iget-object v4, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mTimestamp:Landroid/media/AudioTimestamp;

    iget-object v5, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mMetadata:Landroid/os/PersistableBundle;

    iget-object v6, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mInitialAudio:[B

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/service/voice/HotwordAudioStream;-><init>(Landroid/media/AudioFormat;Landroid/os/ParcelFileDescriptor;Landroid/media/AudioTimestamp;Landroid/os/PersistableBundle;[B)V

    .line 540
    .local v0, "o":Landroid/service/voice/HotwordAudioStream;
    return-object v0
.end method

.method public setAudioFormat(Landroid/media/AudioFormat;)Landroid/service/voice/HotwordAudioStream$Builder;
    .registers 6
    .param p1, "value"    # Landroid/media/AudioFormat;

    .line 456
    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream$Builder;->checkNotUsed()V

    .line 457
    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    .line 458
    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    .line 459
    return-object p0
.end method

.method public setAudioStreamParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/service/voice/HotwordAudioStream$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/ParcelFileDescriptor;

    .line 477
    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream$Builder;->checkNotUsed()V

    .line 478
    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    .line 479
    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mAudioStreamParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 480
    return-object p0
.end method

.method public bridge synthetic setInitialAudio([B)Landroid/service/voice/HotwordAudioStream$Builder;
    .registers 2

    .line 410
    invoke-super {p0, p1}, Landroid/service/voice/HotwordAudioStream$BaseBuilder;->setInitialAudio([B)Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMetadata(Landroid/os/PersistableBundle;)Landroid/service/voice/HotwordAudioStream$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/PersistableBundle;

    .line 514
    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream$Builder;->checkNotUsed()V

    .line 515
    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    .line 516
    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mMetadata:Landroid/os/PersistableBundle;

    .line 517
    return-object p0
.end method

.method public setTimestamp(Landroid/media/AudioTimestamp;)Landroid/service/voice/HotwordAudioStream$Builder;
    .registers 6
    .param p1, "value"    # Landroid/media/AudioTimestamp;

    .line 503
    invoke-direct {p0}, Landroid/service/voice/HotwordAudioStream$Builder;->checkNotUsed()V

    .line 504
    iget-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mBuilderFieldsSet:J

    .line 505
    iput-object p1, p0, Landroid/service/voice/HotwordAudioStream$Builder;->mTimestamp:Landroid/media/AudioTimestamp;

    .line 506
    return-object p0
.end method
