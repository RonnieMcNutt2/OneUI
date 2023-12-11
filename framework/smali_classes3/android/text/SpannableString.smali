.class public Landroid/text/SpannableString;
.super Landroid/text/SpannableStringInternal;
.source "SpannableString.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;Z)V

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .registers 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "ignoreNoCopySpan"    # Z

    .line 34
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .registers 2
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 52
    instance-of v0, p0, Landroid/text/SpannableString;

    if-eqz v0, :cond_8

    .line 53
    move-object v0, p0

    check-cast v0, Landroid/text/SpannableString;

    return-object v0

    .line 55
    :cond_8
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 2

    .line 24
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getSpanEnd(Ljava/lang/Object;)I
    .registers 2

    .line 24
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSpanFlags(Ljava/lang/Object;)I
    .registers 2

    .line 24
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSpanStart(Ljava/lang/Object;)I
    .registers 2

    .line 24
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 4

    .line 24
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .line 24
    invoke-super {p0}, Landroid/text/SpannableStringInternal;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic nextSpanTransition(IILjava/lang/Class;)I
    .registers 4

    .line 24
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .registers 2
    .param p1, "what"    # Ljava/lang/Object;

    .line 64
    invoke-super {p0, p1}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public bridge synthetic removeSpan(Ljava/lang/Object;I)V
    .registers 3

    .line 24
    invoke-super {p0, p1, p2}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;I)V

    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 5
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;III)V

    .line 61
    return-void
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 68
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method
