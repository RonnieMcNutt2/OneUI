.class Landroid/text/HtmlToSpannedConverter$Alignment;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Alignment"
.end annotation


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlignment(Landroid/text/HtmlToSpannedConverter$Alignment;)Landroid/text/Layout$Alignment;
    .registers 1

    iget-object p0, p0, Landroid/text/HtmlToSpannedConverter$Alignment;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public constructor <init>(Landroid/text/Layout$Alignment;)V
    .registers 2
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .line 1360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1361
    iput-object p1, p0, Landroid/text/HtmlToSpannedConverter$Alignment;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1362
    return-void
.end method
