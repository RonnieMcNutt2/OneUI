.class public Lcom/samsung/android/allshare/media/ContentInfo;
.super Ljava/lang/Object;
.source "ContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/media/ContentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStartingPosition:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Lcom/samsung/android/allshare/media/ContentInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/media/ContentInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/media/ContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/media/ContentInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/media/ContentInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/media/ContentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/allshare/media/ContentInfo$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->-$$Nest$fgetmStartingPosition(Lcom/samsung/android/allshare/media/ContentInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo;->mStartingPosition:J

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/allshare/media/ContentInfo$Builder;Lcom/samsung/android/allshare/media/ContentInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/media/ContentInfo;-><init>(Lcom/samsung/android/allshare/media/ContentInfo$Builder;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo;->mStartingPosition:J

    .line 128
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public getStartingPosition()J
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo;->mStartingPosition:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 122
    iget-wide v0, p0, Lcom/samsung/android/allshare/media/ContentInfo;->mStartingPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    return-void
.end method
