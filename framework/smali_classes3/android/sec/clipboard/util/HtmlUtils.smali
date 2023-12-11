.class public Landroid/sec/clipboard/util/HtmlUtils;
.super Ljava/lang/Object;
.source "HtmlUtils.java"


# static fields
.field private static final HTML_ENTITY:Ljava/lang/String; = "&[^;]+;"

.field public static final HTML_LINE_FEED:Ljava/lang/String; = "&#10;"

.field private static final HTML_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG_ALL:Ljava/lang/String; = "</?\\w+((\\s+\\w+(\\s*=\\s*(?:\".*?\"|\'.*?\'|[^\'\">\\s]+))?)+\\s*|\\s*)/?>"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    const-string v0, "(</?\\w+((\\s+\\w+(\\s*=\\s*(?:\".*?\"|\'.*?\'|[^\'\">\\s]+))?)+\\s*|\\s*)/?>)|(&[^;]+;)"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/util/HtmlUtils;->HTML_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHtml(Ljava/lang/String;)Z
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    const/4 v0, 0x0

    return v0

    .line 29
    :cond_8
    sget-object v0, Landroid/sec/clipboard/util/HtmlUtils;->HTML_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method
