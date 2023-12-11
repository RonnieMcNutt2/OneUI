.class public Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
.super Ljava/lang/Object;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpellCheckerSessionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    }
.end annotation


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mLocale:Ljava/util/Locale;

.field private final mShouldReferToSpellCheckerLanguageSettings:Z

.field private final mSupportedAttributes:I


# direct methods
.method private constructor <init>(Ljava/util/Locale;ZILandroid/os/Bundle;)V
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "referToSpellCheckerLanguageSettings"    # Z
    .param p3, "supportedAttributes"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mLocale:Ljava/util/Locale;

    .line 544
    iput-boolean p2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mShouldReferToSpellCheckerLanguageSettings:Z

    .line 545
    iput p3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mSupportedAttributes:I

    .line 546
    iput-object p4, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mExtras:Landroid/os/Bundle;

    .line 547
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale;ZILandroid/os/Bundle;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;-><init>(Ljava/util/Locale;ZILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 588
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 557
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getSupportedAttributes()I
    .registers 2

    .line 575
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mSupportedAttributes:I

    return v0
.end method

.method public shouldReferToSpellCheckerLanguageSettings()Z
    .registers 2

    .line 565
    iget-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;->mShouldReferToSpellCheckerLanguageSettings:Z

    return v0
.end method
