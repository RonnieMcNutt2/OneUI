.class Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
.super Ljava/lang/Object;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mEventId:Ljava/lang/String;

.field mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V
    .registers 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handler"    # Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    .line 1337
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    .line 1339
    iput-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1342
    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    .line 1343
    iput-object p2, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    .line 1344
    iput-object p3, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1345
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1349
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1350
    return v0

    .line 1351
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 1352
    return v1

    .line 1353
    :cond_8
    instance-of v2, p1, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    if-nez v2, :cond_d

    .line 1354
    return v0

    .line 1355
    :cond_d
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;

    .line 1356
    .local v2, "obj":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;
    iget-object v3, v2, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mEventId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v2, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mBundle:Landroid/os/Bundle;

    .line 1357
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v2, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$EventHandler;->mHanlder:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1358
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    move v0, v1

    goto :goto_31

    :cond_30
    nop

    .line 1356
    :goto_31
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1363
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
