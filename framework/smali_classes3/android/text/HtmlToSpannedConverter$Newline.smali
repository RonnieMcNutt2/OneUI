.class Landroid/text/HtmlToSpannedConverter$Newline;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Newline"
.end annotation


# instance fields
.field private mNumNewlines:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmNumNewlines(Landroid/text/HtmlToSpannedConverter$Newline;)I
    .registers 1

    iget p0, p0, Landroid/text/HtmlToSpannedConverter$Newline;->mNumNewlines:I

    return p0
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "numNewlines"    # I

    .line 1352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1353
    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Newline;->mNumNewlines:I

    .line 1354
    return-void
.end method
