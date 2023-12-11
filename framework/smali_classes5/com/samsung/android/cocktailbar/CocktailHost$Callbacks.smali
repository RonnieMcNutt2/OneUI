.class Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;
.super Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Callbacks"
.end annotation


# instance fields
.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 77
    return-void
.end method


# virtual methods
.method public changeVisibleEdgeService(ZI)V
    .registers 5
    .param p1, "visible"    # Z
    .param p2, "userId"    # I

    .line 211
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 212
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 213
    return-void

    .line 215
    :cond_b
    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 216
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 217
    return-void
.end method

.method public closeCocktail(III)V
    .registers 7
    .param p1, "cocktailId"    # I
    .param p2, "category"    # I
    .param p3, "userId"    # I

    .line 131
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 132
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 133
    return-void

    .line 135
    :cond_b
    const/4 v1, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 136
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 137
    return-void
.end method

.method public notePauseComponent(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "pauseComponentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 245
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 246
    return-void

    .line 248
    :cond_b
    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 249
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 250
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "resumeComponentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 234
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 235
    return-void

    .line 237
    :cond_b
    const/16 v1, 0x67

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 238
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 239
    return-void
.end method

.method public notifyKeyguardState(ZI)V
    .registers 6
    .param p1, "enable"    # Z
    .param p2, "userId"    # I

    .line 161
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 162
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 163
    return-void

    .line 165
    :cond_b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 166
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 167
    return-void
.end method

.method public notifyWakeUpState(ZII)V
    .registers 7
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .line 171
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 172
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 173
    return-void

    .line 175
    :cond_b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 176
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 177
    return-void
.end method

.method public partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I

    .line 91
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 92
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 93
    return-void

    .line 95
    :cond_b
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 96
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 97
    return-void
.end method

.method public partiallyUpdateHelpView(ILandroid/widget/RemoteViews;I)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "helpView"    # Landroid/widget/RemoteViews;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 103
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 104
    return-void

    .line 106
    :cond_b
    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 107
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 108
    return-void
.end method

.method public removeCocktail(II)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .line 111
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 112
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 113
    return-void

    .line 115
    :cond_b
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 116
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 117
    return-void
.end method

.method public sendExtraData(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "extraData"    # Landroid/os/Bundle;

    .line 191
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 192
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 193
    return-void

    .line 195
    :cond_b
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 196
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 197
    return-void
.end method

.method public setDisableTickerView(II)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "userId"    # I

    .line 201
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 202
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 203
    return-void

    .line 205
    :cond_b
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 206
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 207
    return-void
.end method

.method public setPullToRefresh(IILandroid/app/PendingIntent;I)V
    .registers 7
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 223
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 224
    return-void

    .line 226
    :cond_b
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 227
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 228
    return-void
.end method

.method public showCocktail(II)V
    .registers 5
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .line 121
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 122
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 123
    return-void

    .line 125
    :cond_b
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 126
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 127
    return-void
.end method

.method public switchDefaultCocktail(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 181
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 182
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 183
    return-void

    .line 185
    :cond_b
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 186
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 187
    return-void
.end method

.method public updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 6
    .param p1, "cocktailId"    # I
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3, "userId"    # I

    .line 81
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 82
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 83
    return-void

    .line 85
    :cond_b
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 86
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 87
    return-void
.end method

.method public updateToolLauncher(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 151
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 152
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 153
    return-void

    .line 155
    :cond_b
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 156
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 157
    return-void
.end method

.method public viewDataChanged(III)V
    .registers 7
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I
    .param p3, "userId"    # I

    .line 141
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 142
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_b

    .line 143
    return-void

    .line 145
    :cond_b
    const/4 v1, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 146
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method
