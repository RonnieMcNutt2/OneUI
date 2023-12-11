.class public Lcom/sec/android/allshare/iface/CVMessage;
.super Ljava/lang/Object;
.source "CVMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/android/allshare/iface/CVMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final CVM_TYPE_EVENT:I = 0x4

.field public static final CVM_TYPE_REQUEST:I = 0x2

.field public static final CVM_TYPE_RESPONSE:I = 0x3

.field public static final CVM_TYPE_UNDEF:I = 0x1

.field public static final EVT_MSG_KEY:Ljava/lang/String; = "EVT_MSG_KEY"

.field public static final RES_MSG_KEY:Ljava/lang/String; = "RES_MSG_KEY"


# instance fields
.field private mActionID:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private mMessageID:J

.field private mReplyMessenger:Landroid/os/Messenger;

.field private mType:I

.field private mVersion:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 581
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/iface/CVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 141
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "type"    # I

    .line 159
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "action"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 181
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    .line 201
    iput p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    .line 205
    iput-object p2, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    .line 207
    iput-object p3, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    .line 211
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    .line 569
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/iface/CVMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 571
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/allshare/iface/CVMessage-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public final getActionID()Ljava/lang/String;
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getBundle()Landroid/os/Bundle;
    .registers 3

    .line 461
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 463
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    .line 465
    :cond_b
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getEventID()Ljava/lang/String;
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessenger()Landroid/os/Messenger;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public final getMsgID()J
    .registers 3

    .line 423
    iget-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    return-wide v0
.end method

.method public final getMsgType()I
    .registers 2

    .line 405
    iget v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    return v0
.end method

.method public final getVersion()J
    .registers 3

    .line 351
    iget-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    .line 551
    const-class v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    .line 555
    return-void
.end method

.method public setActionID(Ljava/lang/String;)V
    .registers 2
    .param p1, "action_id"    # Ljava/lang/String;

    .line 243
    iput-object p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 315
    iput-object p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    .line 317
    return-void
.end method

.method public setEventID(Ljava/lang/String;)V
    .registers 2
    .param p1, "event_id"    # Ljava/lang/String;

    .line 261
    iput-object p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setMessenger(Landroid/os/Messenger;)V
    .registers 2
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 333
    iput-object p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    .line 335
    return-void
.end method

.method public setMsgID(J)V
    .registers 3
    .param p1, "id"    # J

    .line 297
    iput-wide p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    .line 299
    return-void
.end method

.method public setMsgType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 279
    iput p1, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    .line 281
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dst"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 519
    iget-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 521
    iget v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget-wide v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mMessageID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 525
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mActionID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 529
    iget-object v0, p0, Lcom/sec/android/allshare/iface/CVMessage;->mReplyMessenger:Landroid/os/Messenger;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 531
    return-void
.end method
