.class public Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextActivityNotificationAttribute.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATUS_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SemContextActivityNotificationAttribute"


# instance fields
.field private mActivityFilter:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    .line 62
    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->setAttribute()V

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    .line 71
    return-void
.end method

.method public constructor <init>([I)V
    .registers 5
    .param p1, "activityFilter"    # [I

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    .line 89
    if-eqz p1, :cond_16

    .line 90
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    .line 91
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->setAttribute()V

    goto :goto_1d

    .line 94
    :cond_16
    const-string v0, "SemContextActivityNotificationAttribute"

    const-string v1, "The activityFilter is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_1d
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "activity_filter"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 126
    const/16 v1, 0x1b

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 127
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 8

    .line 104
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 105
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    array-length v4, v3

    if-ge v2, v4, :cond_47

    .line 107
    aget v3, v3, v2

    const-string v4, "SemContextActivityNotificationAttribute"

    if-ltz v3, :cond_41

    const/4 v5, 0x5

    if-le v3, v5, :cond_1b

    goto :goto_41

    .line 112
    :cond_1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_23
    if-ge v3, v2, :cond_3e

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 115
    const-string v5, "This activity status cannot have duplicated status."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v1

    .line 113
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 106
    .end local v3    # "j":I
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 109
    :cond_41
    :goto_41
    const-string v3, "The activity status is wrong."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v1

    .line 120
    .end local v2    # "i":I
    :cond_47
    const/4 v1, 0x1

    return v1
.end method
