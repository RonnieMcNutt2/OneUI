.class public interface abstract Lcom/android/internal/widget/MessagingMessage;
.super Ljava/lang/Object;
.source "MessagingMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;


# static fields
.field public static final IMAGE_MIME_TYPE_PREFIX:Ljava/lang/String; = "image/"


# direct methods
.method public static synthetic $r8$lambda$z-8z95WUdkdNwhubiXMuIm53__8(Lcom/android/internal/widget/MessagingMessage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/MessagingMessage;->lambda$hideAnimated$0()V

    return-void
.end method

.method public static createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;)Lcom/android/internal/widget/MessagingMessage;
    .registers 4
    .param p0, "layout"    # Lcom/android/internal/widget/IMessagingLayout;
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;
    .param p2, "resolver"    # Lcom/android/internal/widget/ImageResolver;

    .line 38
    invoke-static {p1}, Lcom/android/internal/widget/MessagingMessage;->hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_11

    .line 39
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/MessagingImageMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v0

    return-object v0

    .line 41
    :cond_11
    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v0

    return-object v0
.end method

.method public static dropCache()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/android/internal/widget/MessagingTextMessage;->dropCache()V

    .line 47
    invoke-static {}, Lcom/android/internal/widget/MessagingImageMessage;->dropCache()V

    .line 48
    return-void
.end method

.method public static hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z
    .registers 3
    .param p0, "m"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 51
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 52
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 53
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 51
    :goto_1c
    return v0
.end method

.method private synthetic lambda$hideAnimated$0()V
    .registers 2

    .line 132
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/internal/widget/MessagingMessage;->setIsHidingAnimated(Z)V

    return-void
.end method


# virtual methods
.method public getGroup()Lcom/android/internal/widget/MessagingGroup;
    .registers 2

    .line 117
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Landroid/app/Notification$MessagingStyle$Message;
    .registers 2

    .line 66
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    return-object v0
.end method

.method public abstract getState()Lcom/android/internal/widget/MessagingMessageState;
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 144
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract getVisibility()I
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public hideAnimated()V
    .registers 4

    .line 131
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/internal/widget/MessagingMessage;->setIsHidingAnimated(Z)V

    .line 132
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/MessagingMessage$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/MessagingMessage$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/MessagingMessage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/MessagingGroup;->performRemoveAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public isHidingAnimated()Z
    .registers 2

    .line 126
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->isHidingAnimated()Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2

    .line 140
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->recycle()V

    .line 141
    return-void
.end method

.method public removeMessage(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "toRecycle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;>;"
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/MessagingGroup;->removeMessage(Lcom/android/internal/widget/MessagingMessage;Ljava/util/ArrayList;)V

    .line 106
    return-void
.end method

.method public sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z
    .registers 9
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 70
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    .line 72
    .local v0, "ownMessage":Landroid/app/Notification$MessagingStyle$Message;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_6e

    if-nez v0, :cond_b

    goto :goto_6e

    .line 75
    :cond_b
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 76
    return v2

    .line 78
    :cond_1a
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 79
    return v2

    .line 81
    :cond_29
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->isRemoteInputHistory()Z

    move-result v3

    .line 82
    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->isRemoteInputHistory()Z

    move-result v4

    if-eq v3, v4, :cond_35

    move v3, v1

    goto :goto_36

    :cond_35
    move v3, v2

    .line 87
    .local v3, "hasRemoteInputHistoryChanged":Z
    :goto_36
    if-nez v3, :cond_4f

    .line 88
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 89
    return v2

    .line 91
    :cond_4f
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 92
    return v2

    .line 94
    :cond_5e
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 95
    return v2

    .line 97
    :cond_6d
    return v1

    .line 73
    .end local v3    # "hasRemoteInputHistoryChanged":Z
    :cond_6e
    :goto_6e
    if-ne p1, v0, :cond_71

    goto :goto_72

    :cond_71
    move v1, v2

    :goto_72
    return v1
.end method

.method public sameAs(Lcom/android/internal/widget/MessagingMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/internal/widget/MessagingMessage;

    .line 101
    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .registers 2
    .param p1, "textColor"    # I

    .line 147
    return-void
.end method

.method public setIsHidingAnimated(Z)V
    .registers 3
    .param p1, "isHiding"    # Z

    .line 121
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setIsHidingAnimated(Z)V

    .line 122
    return-void
.end method

.method public setIsHistoric(Z)V
    .registers 3
    .param p1, "isHistoric"    # Z

    .line 113
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setIsHistoric(Z)V

    .line 114
    return-void
.end method

.method public setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z
    .registers 3
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 61
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public setMessagingGroup(Lcom/android/internal/widget/MessagingGroup;)V
    .registers 3
    .param p1, "group"    # Lcom/android/internal/widget/MessagingGroup;

    .line 109
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setGroup(Lcom/android/internal/widget/MessagingGroup;)V

    .line 110
    return-void
.end method

.method public abstract setVisibility(I)V
.end method
