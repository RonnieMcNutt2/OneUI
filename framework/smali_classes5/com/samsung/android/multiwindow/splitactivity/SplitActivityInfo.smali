.class public Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;
.super Ljava/lang/Object;
.source "SplitActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ANY_ACTIVITY:Ljava/lang/String; = "*"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMode:I

.field private final mSourceName:Ljava/lang/String;

.field private final mTargetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mSourceName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mTargetName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mMode:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "sourceName"    # Ljava/lang/String;
    .param p2, "targetName"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mSourceName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mTargetName:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mMode:I

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 83
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 84
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 85
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;

    .line 86
    .local v2, "that":Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;
    iget v3, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mMode:I

    iget v4, v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mMode:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mSourceName:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mSourceName:Ljava/lang/String;

    .line 87
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mTargetName:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mTargetName:Ljava/lang/String;

    .line 88
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 86
    :goto_31
    return v0

    .line 84
    .end local v2    # "that":Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;
    :cond_32
    :goto_32
    return v1
.end method

.method public getMode()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mMode:I

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetName()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mTargetName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mSourceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mTargetName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method match(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "sourceName"    # Ljava/lang/String;
    .param p2, "targetName"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mSourceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method matchWithWildcard(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "sourceName"    # Ljava/lang/String;
    .param p2, "targetName"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mSourceName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mTargetName:Ljava/lang/String;

    .line 66
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 65
    :goto_1d
    return v0
.end method

.method toShortString()Ljava/lang/String;
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mSourceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mTargetName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "{ %s -> %s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 103
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mSourceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mTargetName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/samsung/android/multiwindow/splitactivity/SplitActivityInfo;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method
