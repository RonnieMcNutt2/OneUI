.class public final Lcom/samsung/android/mocca/ContextEvent;
.super Ljava/lang/Object;
.source "ContextEvent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/mocca/ContextEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3d4f43e658fc0980L


# instance fields
.field public final data:[B

.field public final deviceId:Ljava/lang/String;

.field public final timestamp:J

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Lcom/samsung/android/mocca/ContextEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/mocca/ContextEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mocca/ContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;[B)V
    .registers 7
    .param p1, "timestamp"    # J
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "data"    # [B

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lcom/samsung/android/mocca/ContextEvent;->timestamp:J

    .line 63
    iput-object p3, p0, Lcom/samsung/android/mocca/ContextEvent;->deviceId:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/samsung/android/mocca/ContextEvent;->type:Ljava/lang/String;

    .line 65
    array-length v0, p5

    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mocca/ContextEvent;->data:[B

    .line 66
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;[BLcom/samsung/android/mocca/ContextEvent-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mocca/ContextEvent;-><init>(JLjava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/mocca/ContextEvent;->timestamp:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mocca/ContextEvent;->deviceId:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mocca/ContextEvent;->type:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/mocca/ContextEvent;->data:[B

    .line 76
    return-void
.end method

.method public static builder()Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;
    .registers 1

    .line 99
    new-instance v0, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;

    invoke-direct {v0}, Lcom/samsung/android/mocca/ContextEvent$ContextEventBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 115
    iget-wide v0, p0, Lcom/samsung/android/mocca/ContextEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextEvent;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextEvent;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/mocca/ContextEvent;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 119
    return-void
.end method
