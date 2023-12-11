.class public Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextWakeUpVoiceAttribute.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODE_REFERENCE_DATA:I = 0x1

.field private static final MODE_REGISTER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemContextWakeUpVoiceAttribute"


# instance fields
.field private mGramData:[B

.field private mMode:I

.field private mNetData:[B

.field private mVoiceMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    .line 66
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->setAttribute()V

    .line 74
    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    .line 66
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 98
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->setAttribute()V

    .line 100
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    .line 66
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    .line 81
    return-void
.end method

.method public constructor <init>([B[B)V
    .registers 6
    .param p1, "netData"    # [B
    .param p2, "gramData"    # [B

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    .line 66
    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    .line 116
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    .line 117
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    .line 118
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    .line 120
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->setAttribute()V

    .line 122
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    if-nez v1, :cond_1a

    .line 150
    const-string/jumbo v1, "voice_mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2a

    .line 152
    :cond_1a
    const-string/jumbo v1, "net_data"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 153
    const-string/jumbo v1, "gram_data"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 155
    :goto_2a
    const/16 v1, 0x10

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 156
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 5

    .line 130
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    .line 131
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mVoiceMode:I

    if-eq v0, v2, :cond_d

    const/4 v3, 0x2

    if-ne v0, v3, :cond_e

    :cond_d
    move v1, v2

    :cond_e
    return v1

    .line 134
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mNetData:[B

    const-string v3, "SemContextWakeUpVoiceAttribute"

    if-nez v0, :cond_1b

    .line 135
    const-string v0, "The net data is null."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v1

    .line 138
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWakeUpVoiceAttribute;->mGramData:[B

    if-nez v0, :cond_25

    .line 139
    const-string v0, "The gram data is null."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v1

    .line 142
    :cond_25
    return v2
.end method
