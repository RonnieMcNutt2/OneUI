.class public Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextLocationChangeTriggerAttribute.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextLocationChangeTriggerAttribute"


# instance fields
.field private mDuration:I

.field private mTriggerType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mTriggerType:I

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mDuration:I

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->setAttribute()V

    .line 62
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "duration"    # I

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mTriggerType:I

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mDuration:I

    .line 84
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mTriggerType:I

    .line 85
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mDuration:I

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->setAttribute()V

    .line 87
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mTriggerType:I

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mDuration:I

    .line 69
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "trigger_type"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mTriggerType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const/16 v1, 0x36

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 111
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 5

    .line 98
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mTriggerType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_10

    const/4 v3, 0x3

    if-le v0, v3, :cond_a

    goto :goto_10

    .line 103
    :cond_a
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mDuration:I

    if-ltz v0, :cond_f

    move v1, v2

    :cond_f
    return v1

    .line 100
    :cond_10
    :goto_10
    const-string v0, "SemContextLocationChangeTriggerAttribute"

    const-string v2, "The display status is wrong."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v1
.end method
