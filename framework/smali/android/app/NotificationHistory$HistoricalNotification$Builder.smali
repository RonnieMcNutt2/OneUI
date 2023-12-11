.class public final Landroid/app/NotificationHistory$HistoricalNotification$Builder;
.super Ljava/lang/Object;
.source "NotificationHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationHistory$HistoricalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mChannelId:Ljava/lang/String;

.field private mChannelName:Ljava/lang/String;

.field private mConversationId:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIsChecked:Z

.field private mPackage:Ljava/lang/String;

.field private mPostedTimeMs:J

.field private mSbnKey:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private mUid:I

.field private mUri:Landroid/net/Uri;

.field private mUserId:I

.field private mWhen:J


# direct methods
.method static bridge synthetic -$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/NotificationHistory$HistoricalNotification;
    .registers 4

    .line 294
    new-instance v0, Landroid/app/NotificationHistory$HistoricalNotification;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;-><init>(Landroid/app/NotificationHistory$HistoricalNotification-IA;)V

    .line 295
    .local v0, "n":Landroid/app/NotificationHistory$HistoricalNotification;
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmChannelName(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmChannelId(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    .line 298
    iget v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUid:I

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmUid(Landroid/app/NotificationHistory$HistoricalNotification;I)V

    .line 299
    iget v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUserId:I

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmUserId(Landroid/app/NotificationHistory$HistoricalNotification;I)V

    .line 300
    iget-wide v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPostedTimeMs:J

    invoke-static {v0, v1, v2}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmPostedTimeMs(Landroid/app/NotificationHistory$HistoricalNotification;J)V

    .line 301
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmTitle(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmText(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmIcon(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/graphics/drawable/Icon;)V

    .line 304
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mConversationId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmConversationId(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mSbnKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmSbnKey(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    .line 307
    iget v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mType:I

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmType(Landroid/app/NotificationHistory$HistoricalNotification;I)V

    .line 308
    iget-boolean v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIsChecked:Z

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmIsChecked(Landroid/app/NotificationHistory$HistoricalNotification;Z)V

    .line 309
    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmUri(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/net/Uri;)V

    .line 310
    iget-wide v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mWhen:J

    invoke-static {v0, v1, v2}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmWhen(Landroid/app/NotificationHistory$HistoricalNotification;J)V

    .line 312
    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "channelId"    # Ljava/lang/String;

    .line 227
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelId:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "channelName"    # Ljava/lang/String;

    .line 222
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelName:Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public setChecked(Z)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "checked"    # Z

    .line 278
    iput-boolean p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIsChecked:Z

    .line 279
    return-object p0
.end method

.method public setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "conversationId"    # Ljava/lang/String;

    .line 262
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mConversationId:Ljava/lang/String;

    .line 263
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 257
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 258
    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "aPackage"    # Ljava/lang/String;

    .line 217
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 3
    .param p1, "postedTimeMs"    # J

    .line 242
    iput-wide p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPostedTimeMs:J

    .line 243
    return-object p0
.end method

.method public setSbnKey(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "sbnKey"    # Ljava/lang/String;

    .line 268
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mSbnKey:Ljava/lang/String;

    .line 269
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .line 252
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mText:Ljava/lang/String;

    .line 253
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 247
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mTitle:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public setType(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "type"    # I

    .line 273
    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mType:I

    .line 274
    return-object p0
.end method

.method public setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "uid"    # I

    .line 232
    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUid:I

    .line 233
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 283
    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUri:Landroid/net/Uri;

    .line 284
    return-object p0
.end method

.method public setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 2
    .param p1, "userId"    # I

    .line 237
    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUserId:I

    .line 238
    return-object p0
.end method

.method public setWhen(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .registers 3
    .param p1, "when"    # J

    .line 288
    iput-wide p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mWhen:J

    .line 289
    return-object p0
.end method
