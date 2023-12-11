.class public Landroid/app/Notification$CarExtender$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLatestTimestamp:J

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticipant:Ljava/lang/String;

.field private mReadPendingIntent:Landroid/app/PendingIntent;

.field private mRemoteInput:Landroid/app/RemoteInput;

.field private mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 12342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    .line 12343
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mParticipant:Ljava/lang/String;

    .line 12344
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Landroid/app/Notification$CarExtender$Builder;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 12355
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12356
    return-object p0
.end method

.method public build()Landroid/app/Notification$CarExtender$UnreadConversation;
    .registers 11

    .line 12412
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 12413
    .local v0, "messages":[Ljava/lang/String;
    iget-object v1, p0, Landroid/app/Notification$CarExtender$Builder;->mParticipant:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    .line 12414
    .local v6, "participants":[Ljava/lang/String;
    new-instance v9, Landroid/app/Notification$CarExtender$UnreadConversation;

    iget-object v3, p0, Landroid/app/Notification$CarExtender$Builder;->mRemoteInput:Landroid/app/RemoteInput;

    iget-object v4, p0, Landroid/app/Notification$CarExtender$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/app/Notification$CarExtender$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    iget-wide v7, p0, Landroid/app/Notification$CarExtender$Builder;->mLatestTimestamp:J

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Landroid/app/Notification$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v9
.end method

.method public setLatestTimestamp(J)Landroid/app/Notification$CarExtender$Builder;
    .registers 3
    .param p1, "timestamp"    # J

    .line 12402
    iput-wide p1, p0, Landroid/app/Notification$CarExtender$Builder;->mLatestTimestamp:J

    .line 12403
    return-object p0
.end method

.method public setReadPendingIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$CarExtender$Builder;
    .registers 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 12386
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    .line 12387
    return-object p0
.end method

.method public setReplyAction(Landroid/app/PendingIntent;Landroid/app/RemoteInput;)Landroid/app/Notification$CarExtender$Builder;
    .registers 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;

    .line 12372
    iput-object p2, p0, Landroid/app/Notification$CarExtender$Builder;->mRemoteInput:Landroid/app/RemoteInput;

    .line 12373
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    .line 12375
    return-object p0
.end method
