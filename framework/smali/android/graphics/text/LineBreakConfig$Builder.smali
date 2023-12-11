.class public final Landroid/graphics/text/LineBreakConfig$Builder;
.super Ljava/lang/Object;
.source "LineBreakConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreakConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mLineBreakStyle:I

.field private mLineBreakWordStyle:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 95
    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 102
    return-void
.end method


# virtual methods
.method public build()Landroid/graphics/text/LineBreakConfig;
    .registers 5

    .line 135
    new-instance v0, Landroid/graphics/text/LineBreakConfig;

    iget v1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    iget v2, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/text/LineBreakConfig;-><init>(IILandroid/graphics/text/LineBreakConfig-IA;)V

    return-object v0
.end method

.method public setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .registers 2
    .param p1, "lineBreakStyle"    # I

    .line 111
    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 112
    return-object p0
.end method

.method public setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .registers 4
    .param p1, "lineBreakWordStyle"    # I

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ko"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 124
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    move v0, p1

    :goto_14
    move p1, v0

    .line 125
    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 126
    return-object p0
.end method
