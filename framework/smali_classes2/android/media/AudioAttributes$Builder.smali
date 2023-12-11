.class public Landroid/media/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final PRIVACY_SENSITIVE_DEFAULT:I = -0x1

.field private static final PRIVACY_SENSITIVE_DISABLED:I = 0x0

.field private static final PRIVACY_SENSITIVE_ENABLED:I = 0x1


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContentType:I

.field private mFlags:I

.field private mIsContentSpatialized:Z

.field private mMuteHapticChannels:Z

.field private mPrivacySensitive:I

.field private mSource:I

.field private mSpatializationBehavior:I

.field private mSystemUsage:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 756
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    .line 757
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 758
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 759
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 760
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 761
    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 762
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 763
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 765
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 780
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;)V
    .registers 5
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 756
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    .line 757
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 758
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 759
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 760
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 761
    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 762
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 763
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 765
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 788
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 789
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmContentType(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 790
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmSource(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 791
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 792
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$fgetmTags(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 793
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->areHapticChannelsMuted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 794
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->isContentSpatialized()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 795
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSpatializationBehavior()I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 796
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_5d

    .line 797
    iput v2, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 799
    :cond_5d
    return-void
.end method


# virtual methods
.method public addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1098
    if-eqz p1, :cond_12

    .line 1101
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_e

    .line 1102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    goto :goto_11

    .line 1104
    :cond_e
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1106
    :goto_11
    return-object p0

    .line 1099
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 1117
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1118
    return-object p0
.end method

.method public allowConcurrentCapture()Landroid/media/AudioAttributes$Builder;
    .registers 3

    .line 1360
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 1361
    const-string v0, "AudioAttributes"

    const-string v1, "Current source is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    return-object p0

    .line 1365
    :cond_d
    const/16 v1, 0x7cf

    if-ne v0, v1, :cond_17

    .line 1366
    const-string v0, "VOICE_ASSISTANT"

    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    goto :goto_1c

    .line 1368
    :cond_17
    const-string v0, "SEC_CONCURRENT_CAPTURE"

    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    .line 1370
    :goto_1c
    return-object p0
.end method

.method public build()Landroid/media/AudioAttributes;
    .registers 7

    .line 808
    new-instance v0, Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/media/AudioAttributes-IA;)V

    .line 809
    .local v0, "aa":Landroid/media/AudioAttributes;
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmContentType(Landroid/media/AudioAttributes;I)V

    .line 811
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    .line 812
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    if-ne v1, v2, :cond_19

    .line 813
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    goto :goto_24

    .line 815
    :cond_19
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    goto :goto_24

    .line 818
    :cond_1d
    iget v3, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    if-ne v3, v2, :cond_d4

    .line 819
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    .line 827
    :goto_24
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I

    move-result v1

    const/4 v3, 0x5

    packed-switch v1, :pswitch_data_dc

    goto :goto_31

    .line 831
    :pswitch_2d
    invoke-static {v0, v3}, Landroid/media/AudioAttributes;->-$$Nest$fputmUsage(Landroid/media/AudioAttributes;I)V

    .line 832
    nop

    .line 837
    :goto_31
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmSource(Landroid/media/AudioAttributes;I)V

    .line 838
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 839
    iget-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    if-eqz v1, :cond_48

    .line 840
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x800

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 842
    :cond_48
    iget-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    if-eqz v1, :cond_55

    .line 843
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x4000

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 845
    :cond_55
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_65

    .line 846
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    const v5, 0x8000

    or-int/2addr v1, v5

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 849
    :cond_65
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    if-ne v1, v2, :cond_85

    .line 852
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7b

    if-ne v1, v3, :cond_71

    goto :goto_7b

    .line 856
    :cond_71
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    goto :goto_9a

    .line 854
    :cond_7b
    :goto_7b
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    goto :goto_9a

    .line 858
    :cond_85
    if-ne v1, v4, :cond_91

    .line 859
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    goto :goto_9a

    .line 861
    :cond_91
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 863
    :goto_9a
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmTags(Landroid/media/AudioAttributes;Ljava/util/HashSet;)V

    .line 864
    const-string v1, ";"

    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFormattedTags(Landroid/media/AudioAttributes;Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_be

    .line 866
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmBundle(Landroid/media/AudioAttributes;Landroid/os/Bundle;)V

    .line 870
    :cond_be
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_d3

    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d3

    .line 872
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmFlags(Landroid/media/AudioAttributes;)I

    move-result v1

    and-int/lit8 v1, v1, -0x21

    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-$$Nest$fputmFlags(Landroid/media/AudioAttributes;I)V

    .line 874
    :cond_d3
    return-object v0

    .line 821
    :cond_d4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot set both usage and system usage on same builder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_dc
    .packed-switch 0x7
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public replaceFlags(I)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 1086
    const v0, 0x1f7ff

    and-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1087
    return-object p0
.end method

.method public replaceTags(Ljava/util/HashSet;)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/AudioAttributes$Builder;"
        }
    .end annotation

    .line 1128
    .local p1, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 1129
    return-object p0
.end method

.method public semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 1351
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "capturePolicy"    # I

    .line 1046
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    invoke-static {p1, v0}, Landroid/media/AudioAttributes;->capturePolicyToFlags(II)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1047
    return-object p0
.end method

.method public setCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .registers 4
    .param p1, "preset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1247
    packed-switch p1, :pswitch_data_26

    .line 1272
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid capture preset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for AudioAttributes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1269
    :pswitch_22
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 1270
    nop

    .line 1274
    :goto_25
    return-object p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_3
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public setContentType(I)Landroid/media/AudioAttributes$Builder;
    .registers 5
    .param p1, "contentType"    # I

    .line 955
    packed-switch p1, :pswitch_data_20

    .line 964
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :pswitch_1c
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 962
    nop

    .line 966
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public setFlags(I)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 998
    and-int/lit16 p1, p1, 0x1d1

    .line 999
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1000
    return-object p0
.end method

.method public setForCallRedirection()Landroid/media/AudioAttributes$Builder;
    .registers 3

    .line 1338
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1339
    return-object p0
.end method

.method public setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;
    .registers 2
    .param p1, "muted"    # Z

    .line 1314
    iput-boolean p1, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 1315
    return-object p0
.end method

.method public setHotwordModeEnabled(Z)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1016
    if-eqz p1, :cond_9

    .line 1017
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    goto :goto_f

    .line 1019
    :cond_9
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1021
    :goto_f
    return-object p0
.end method

.method public setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .registers 3
    .param p1, "preset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1287
    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_25

    const/16 v0, 0x8

    if-eq p1, v0, :cond_25

    const/16 v0, 0x7ce

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x4

    if-eq p1, v0, :cond_25

    const/16 v0, 0x7cd

    if-eq p1, v0, :cond_25

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_25

    const/4 v0, -0x1

    if-ne p1, v0, :cond_21

    goto :goto_25

    .line 1300
    :cond_21
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_27

    .line 1298
    :cond_25
    :goto_25
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 1302
    :goto_27
    return-object p0
.end method

.method public setInternalContentType(I)Landroid/media/AudioAttributes$Builder;
    .registers 2
    .param p1, "contentType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 978
    packed-switch p1, :pswitch_data_c

    .line 983
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_a

    .line 980
    :pswitch_7
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 981
    nop

    .line 986
    :goto_a
    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x7cd
        :pswitch_7
    .end packed-switch
.end method

.method public setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .registers 5
    .param p1, "streamType"    # I

    .line 1164
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1165
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 1166
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    .line 1167
    nop

    .line 1168
    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1170
    .local v0, "attributes":Landroid/media/AudioAttributes;
    if-eqz v0, :cond_4c

    .line 1171
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmUsage(Landroid/media/AudioAttributes;)I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 1172
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmContentType(Landroid/media/AudioAttributes;)I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1173
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1174
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->areHapticChannelsMuted()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mMuteHapticChannels:Z

    .line 1175
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->isContentSpatialized()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 1176
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getSpatializationBehavior()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 1177
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmTags(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 1178
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmBundle(Landroid/media/AudioAttributes;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    .line 1179
    invoke-static {v0}, Landroid/media/AudioAttributes;->-$$Nest$fgetmSource(Landroid/media/AudioAttributes;)I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 1182
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    :cond_4c
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    if-nez v0, :cond_a7

    .line 1183
    const/4 v0, 0x1

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_b2

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid stream type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for AudioAttributes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioAttributes"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 1220
    :pswitch_74
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1221
    goto :goto_a7

    .line 1217
    :pswitch_77
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1218
    goto :goto_a7

    .line 1213
    :pswitch_7a
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1214
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1215
    goto :goto_a7

    .line 1210
    :pswitch_83
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1211
    goto :goto_a7

    .line 1188
    :pswitch_86
    iget v2, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    goto :goto_a1

    .line 1206
    :pswitch_8c
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1207
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 1208
    goto :goto_a7

    .line 1203
    :pswitch_94
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1204
    goto :goto_a7

    .line 1200
    :pswitch_97
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1201
    goto :goto_a7

    .line 1197
    :pswitch_9a
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1198
    goto :goto_a7

    .line 1194
    :pswitch_9e
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1195
    goto :goto_a7

    .line 1191
    :goto_a1
    :pswitch_a1
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1192
    goto :goto_a7

    .line 1185
    :pswitch_a4
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 1186
    nop

    .line 1226
    :cond_a7
    :goto_a7
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    if-nez v0, :cond_b1

    .line 1227
    invoke-static {p1}, Landroid/media/AudioAttributes;->-$$Nest$smusageForStreamType(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 1229
    :cond_b1
    return-object p0

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_8c
        :pswitch_86
        :pswitch_83
        :pswitch_7a
        :pswitch_77
        :pswitch_74
    .end packed-switch
.end method

.method public setIsContentSpatialized(Z)Landroid/media/AudioAttributes$Builder;
    .registers 2
    .param p1, "isSpatialized"    # Z

    .line 1057
    iput-boolean p1, p0, Landroid/media/AudioAttributes$Builder;->mIsContentSpatialized:Z

    .line 1058
    return-object p0
.end method

.method public setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .registers 4
    .param p1, "streamType"    # I

    .line 1148
    const/16 v0, 0xa

    if-eq p1, v0, :cond_8

    .line 1152
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 1153
    return-object p0

    .line 1149
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrivacySensitive(Z)Landroid/media/AudioAttributes$Builder;
    .registers 2
    .param p1, "privacySensitive"    # Z

    .line 1327
    nop

    .line 1328
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mPrivacySensitive:I

    .line 1329
    return-object p0
.end method

.method public setSpatializationBehavior(I)Landroid/media/AudioAttributes$Builder;
    .registers 5
    .param p1, "sb"    # I

    .line 1068
    packed-switch p1, :pswitch_data_20

    .line 1073
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid spatialization behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :pswitch_1c
    nop

    .line 1075
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSpatializationBehavior:I

    .line 1076
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public setSystemUsage(I)Landroid/media/AudioAttributes$Builder;
    .registers 5
    .param p1, "systemUsage"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 934
    invoke-static {p1}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 935
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSystemUsage:I

    .line 940
    return-object p0

    .line 937
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid system usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUsage(I)Landroid/media/AudioAttributes$Builder;
    .registers 5
    .param p1, "usage"    # I

    .line 895
    packed-switch p1, :pswitch_data_20

    .line 916
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :pswitch_1c
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 914
    nop

    .line 918
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
