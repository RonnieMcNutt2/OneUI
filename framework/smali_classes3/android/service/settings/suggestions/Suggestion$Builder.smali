.class public Landroid/service/settings/suggestions/Suggestion$Builder;
.super Ljava/lang/Object;
.source "Suggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/suggestions/Suggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private final mId:Ljava/lang/String;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFlags(Landroid/service/settings/suggestions/Suggestion$Builder;)I
    .registers 1

    iget p0, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIcon(Landroid/service/settings/suggestions/Suggestion$Builder;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Landroid/service/settings/suggestions/Suggestion$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingIntent(Landroid/service/settings/suggestions/Suggestion$Builder;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummary(Landroid/service/settings/suggestions/Suggestion$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Landroid/service/settings/suggestions/Suggestion$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 171
    iput-object p1, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mId:Ljava/lang/String;

    .line 172
    return-void

    .line 169
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Suggestion id cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/service/settings/suggestions/Suggestion;
    .registers 3

    .line 219
    new-instance v0, Landroid/service/settings/suggestions/Suggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/settings/suggestions/Suggestion;-><init>(Landroid/service/settings/suggestions/Suggestion$Builder;Landroid/service/settings/suggestions/Suggestion-IA;)V

    return-object v0
.end method

.method public setFlags(I)Landroid/service/settings/suggestions/Suggestion$Builder;
    .registers 2
    .param p1, "flags"    # I

    .line 203
    iput p1, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mFlags:I

    .line 204
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)Landroid/service/settings/suggestions/Suggestion$Builder;
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 194
    iput-object p1, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 195
    return-object p0
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)Landroid/service/settings/suggestions/Suggestion$Builder;
    .registers 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 211
    iput-object p1, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 212
    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Landroid/service/settings/suggestions/Suggestion$Builder;
    .registers 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 186
    iput-object p1, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mSummary:Ljava/lang/CharSequence;

    .line 187
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/service/settings/suggestions/Suggestion$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 178
    iput-object p1, p0, Landroid/service/settings/suggestions/Suggestion$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 179
    return-object p0
.end method
