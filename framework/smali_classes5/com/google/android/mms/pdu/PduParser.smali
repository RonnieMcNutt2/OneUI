.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mEnableMmsServerTime:Z

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private final mParseContentDisposition:Z

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    nop

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 86
    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 2228
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->mEnableMmsServerTime:Z

    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .param p1, "pduDataStream"    # [B

    .line 2234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 71
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 76
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 2235
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 2237
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 2238
    .local v0, "cscFeature":Lcom/samsung/android/feature/SemCscFeature;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    .line 2239
    const-string v2, "CscFeature_Message_DisplayMmsTimeAs"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2240
    .local v2, "displayMmsTimeAs":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/google/android/mms/pdu/PduParser;->isServerTime(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/mms/pdu/PduParser;->mEnableMmsServerTime:Z

    .line 2241
    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 6
    .param p1, "pduDataStream"    # [B
    .param p2, "parseContentDisposition"    # Z

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 71
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 76
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 108
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 109
    iput-boolean p2, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    .line 111
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 112
    .local v0, "cscFeature":Lcom/samsung/android/feature/SemCscFeature;
    const-string v1, "CscFeature_Message_DisplayMmsTimeAs"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "displayMmsTimeAs":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/mms/pdu/PduParser;->isServerTime(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/google/android/mms/pdu/PduParser;->mEnableMmsServerTime:Z

    .line 115
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .registers 14
    .param p0, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 2010
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2011
    return v0

    .line 2015
    :cond_4
    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 2018
    .local v1, "messageType":I
    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v2

    .line 2019
    .local v2, "mmsVersion":I
    if-nez v2, :cond_13

    .line 2021
    return v0

    .line 2025
    :cond_13
    const/16 v3, 0x9b

    const/16 v4, 0x95

    const/16 v5, 0x84

    const/16 v6, 0x97

    const/16 v7, 0x8b

    const/16 v8, 0x89

    const/16 v9, 0x85

    const-wide/16 v10, -0x1

    const/16 v12, 0x98

    packed-switch v1, :pswitch_data_104

    .line 2214
    return v0

    .line 2156
    :pswitch_29
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 2157
    .local v4, "roDate":J
    cmp-long v9, v10, v4

    if-nez v9, :cond_32

    .line 2158
    return v0

    .line 2162
    :cond_32
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 2163
    .local v8, "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v8, :cond_39

    .line 2164
    return v0

    .line 2168
    :cond_39
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v7

    .line 2169
    .local v7, "roMessageId":[B
    if-nez v7, :cond_40

    .line 2170
    return v0

    .line 2174
    :cond_40
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 2175
    .local v3, "roReadStatus":I
    if-nez v3, :cond_47

    .line 2176
    return v0

    .line 2180
    :cond_47
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 2181
    .local v6, "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v6, :cond_101

    .line 2182
    return v0

    .line 2188
    .end local v3    # "roReadStatus":I
    .end local v4    # "roDate":J
    .end local v6    # "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v7    # "roMessageId":[B
    .end local v8    # "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4e
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 2189
    .local v4, "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v4, :cond_55

    .line 2190
    return v0

    .line 2194
    :cond_55
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 2195
    .local v5, "rrMessageId":[B
    if-nez v5, :cond_5c

    .line 2196
    return v0

    .line 2200
    :cond_5c
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 2201
    .local v3, "rrReadStatus":I
    if-nez v3, :cond_63

    .line 2202
    return v0

    .line 2206
    :cond_63
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 2207
    .local v6, "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v6, :cond_101

    .line 2208
    return v0

    .line 2122
    .end local v3    # "rrReadStatus":I
    .end local v4    # "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5    # "rrMessageId":[B
    .end local v6    # "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_6a
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v8

    .line 2123
    .local v8, "diDate":J
    cmp-long v3, v10, v8

    if-nez v3, :cond_73

    .line 2124
    return v0

    .line 2128
    :cond_73
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 2129
    .local v3, "diMessageId":[B
    if-nez v3, :cond_7a

    .line 2130
    return v0

    .line 2134
    :cond_7a
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v4

    .line 2135
    .local v4, "diStatus":I
    if-nez v4, :cond_81

    .line 2136
    return v0

    .line 2140
    :cond_81
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 2141
    .local v5, "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v5, :cond_101

    .line 2142
    return v0

    .line 2148
    .end local v3    # "diMessageId":[B
    .end local v4    # "diStatus":I
    .end local v5    # "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v8    # "diDate":J
    :pswitch_88
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 2149
    .local v3, "aiTransactionId":[B
    if-nez v3, :cond_101

    .line 2150
    return v0

    .line 2108
    .end local v3    # "aiTransactionId":[B
    :pswitch_8f
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 2109
    .local v3, "rcContentType":[B
    if-nez v3, :cond_96

    .line 2110
    return v0

    .line 2114
    :cond_96
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 2115
    .local v4, "rcDate":J
    cmp-long v6, v10, v4

    if-nez v6, :cond_101

    .line 2116
    return v0

    .line 2094
    .end local v3    # "rcContentType":[B
    .end local v4    # "rcDate":J
    :pswitch_9f
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 2095
    .local v3, "nriStatus":I
    if-nez v3, :cond_a6

    .line 2096
    return v0

    .line 2100
    :cond_a6
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    .line 2101
    .local v4, "nriTransactionId":[B
    if-nez v4, :cond_101

    .line 2102
    return v0

    .line 2062
    .end local v3    # "nriStatus":I
    .end local v4    # "nriTransactionId":[B
    :pswitch_ad
    const/16 v3, 0x83

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 2063
    .local v3, "niContentLocation":[B
    if-nez v3, :cond_b6

    .line 2064
    return v0

    .line 2068
    :cond_b6
    const/16 v4, 0x88

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 2069
    .local v4, "niExpiry":J
    cmp-long v6, v10, v4

    if-nez v6, :cond_c1

    .line 2070
    return v0

    .line 2074
    :cond_c1
    const/16 v6, 0x8a

    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v6

    .line 2075
    .local v6, "niMessageClass":[B
    if-nez v6, :cond_ca

    .line 2076
    return v0

    .line 2080
    :cond_ca
    const/16 v7, 0x8e

    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 2081
    .local v7, "niMessageSize":J
    cmp-long v9, v10, v7

    if-nez v9, :cond_d5

    .line 2082
    return v0

    .line 2086
    :cond_d5
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v9

    .line 2087
    .local v9, "niTransactionId":[B
    if-nez v9, :cond_101

    .line 2088
    return v0

    .line 2048
    .end local v3    # "niContentLocation":[B
    .end local v4    # "niExpiry":J
    .end local v6    # "niMessageClass":[B
    .end local v7    # "niMessageSize":J
    .end local v9    # "niTransactionId":[B
    :pswitch_dc
    const/16 v3, 0x92

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 2049
    .local v3, "scResponseStatus":I
    if-nez v3, :cond_e5

    .line 2050
    return v0

    .line 2054
    :cond_e5
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    .line 2055
    .local v4, "scTransactionId":[B
    if-nez v4, :cond_101

    .line 2056
    return v0

    .line 2028
    .end local v3    # "scResponseStatus":I
    .end local v4    # "scTransactionId":[B
    :pswitch_ec
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 2029
    .local v3, "srContentType":[B
    if-nez v3, :cond_f3

    .line 2030
    return v0

    .line 2034
    :cond_f3
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 2035
    .local v4, "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v4, :cond_fa

    .line 2036
    return v0

    .line 2040
    :cond_fa
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 2041
    .local v5, "srTransactionId":[B
    if-nez v5, :cond_101

    .line 2042
    return v0

    .line 2217
    .end local v3    # "srContentType":[B
    .end local v4    # "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5    # "srTransactionId":[B
    :cond_101
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_104
    .packed-switch 0x80
        :pswitch_ec
        :pswitch_dc
        :pswitch_ad
        :pswitch_9f
        :pswitch_8f
        :pswitch_88
        :pswitch_6a
        :pswitch_4e
        :pswitch_29
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .registers 5
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .line 1971
    nop

    .line 1972
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    const/4 v1, 0x1

    if-nez v0, :cond_b

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v2, :cond_b

    .line 1974
    return v1

    .line 1978
    :cond_b
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    .line 1979
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1980
    .local v0, "contentId":[B
    if-eqz v0, :cond_1f

    .line 1981
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v1, v2, :cond_1f

    .line 1982
    return v3

    .line 1987
    :cond_1f
    return v1

    .line 1991
    .end local v0    # "contentId":[B
    :cond_20
    if-eqz v0, :cond_31

    .line 1992
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    .line 1993
    .local v0, "contentType":[B
    if-eqz v0, :cond_31

    .line 1994
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v1, v2, :cond_31

    .line 1995
    return v3

    .line 2000
    .end local v0    # "contentType":[B
    :cond_31
    return v1
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1410
    nop

    .line 1411
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1412
    .local v0, "temp":I
    nop

    .line 1413
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .line 1376
    nop

    .line 1377
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1378
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1379
    .local v1, "temp":I
    nop

    .line 1380
    :goto_b
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2b

    if-eqz v1, :cond_2b

    .line 1382
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    .line 1383
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1384
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_26

    .line 1387
    :cond_1d
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1388
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1392
    :cond_26
    :goto_26
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1393
    goto :goto_b

    .line 1396
    :cond_2b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_36

    .line 1397
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 1400
    :cond_36
    const/4 v2, 0x0

    return-object v2
.end method

.method private static isServerTime(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "displayTimeAs"    # Ljava/lang/String;
    .param p1, "initValue"    # Z

    .line 2244
    if-nez p0, :cond_3

    .line 2245
    return p1

    .line 2247
    :cond_3
    const-string/jumbo v0, "phone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2248
    const/4 v0, 0x0

    return v0

    .line 2249
    :cond_e
    const-string/jumbo v0, "server"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2250
    const/4 v0, 0x1

    return v0

    .line 2252
    :cond_19
    return p1
.end method

.method protected static isText(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 1360
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-lt p0, v0, :cond_9

    const/16 v0, 0x7e

    if-le p0, v0, :cond_11

    :cond_9
    const/16 v0, 0x80

    if-lt p0, v0, :cond_12

    const/16 v0, 0xff

    if-gt p0, v0, :cond_12

    .line 1361
    :cond_11
    return v1

    .line 1364
    :cond_12
    packed-switch p0, :pswitch_data_18

    .line 1371
    :pswitch_15
    const/4 v0, 0x0

    return v0

    .line 1368
    :pswitch_17
    return v1

    :pswitch_data_18
    .packed-switch 0x9
        :pswitch_17
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 1316
    const/16 v0, 0x21

    const/4 v1, 0x0

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7e

    if-le p0, v0, :cond_a

    goto :goto_10

    .line 1320
    :cond_a
    sparse-switch p0, :sswitch_data_12

    .line 1341
    const/4 v0, 0x1

    return v0

    .line 1338
    :sswitch_f
    return v1

    .line 1317
    :cond_10
    :goto_10
    return v1

    nop

    :sswitch_data_12
    .sparse-switch
        0x22 -> :sswitch_f
        0x28 -> :sswitch_f
        0x29 -> :sswitch_f
        0x2c -> :sswitch_f
        0x2f -> :sswitch_f
        0x3a -> :sswitch_f
        0x3b -> :sswitch_f
        0x3c -> :sswitch_f
        0x3d -> :sswitch_f
        0x3e -> :sswitch_f
        0x3f -> :sswitch_f
        0x40 -> :sswitch_f
        0x5b -> :sswitch_f
        0x5c -> :sswitch_f
        0x5d -> :sswitch_f
        0x7b -> :sswitch_f
        0x7d -> :sswitch_f
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .registers 1
    .param p0, "text"    # Ljava/lang/String;

    .line 1116
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .registers 13
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 1716
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 1718
    const/4 v0, 0x0

    .line 1719
    .local v0, "contentType":[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1720
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1721
    .local v2, "temp":I
    nop

    .line 1722
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1724
    and-int/lit16 v3, v2, 0xff

    .line 1726
    .local v3, "cur":I
    const/16 v4, 0x20

    const/16 v5, 0x7f

    const/4 v6, 0x0

    if-ge v3, v4, :cond_bb

    .line 1728
    const/4 v7, 0x0

    .line 1730
    .local v7, "length":I
    :try_start_18
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v8
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1c} :catch_b2

    move v7, v8

    .line 1734
    nop

    .line 1736
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 1737
    .local v8, "startPos":I
    const-string v9, "PduParser"

    if-le v7, v8, :cond_50

    .line 1738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseContentType: Invalid length "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " when available bytes are "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    .line 1742
    :cond_50
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1743
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1744
    nop

    .line 1745
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1746
    and-int/lit16 v1, v2, 0xff

    .line 1748
    .local v1, "first":I
    if-lt v1, v4, :cond_66

    if-gt v1, v5, :cond_66

    .line 1749
    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_82

    .line 1750
    :cond_66
    if-le v1, v5, :cond_a4

    .line 1751
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1753
    .local v4, "index":I
    sget-object v5, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_7a

    .line 1754
    sget-object v5, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_81

    .line 1756
    :cond_7a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1757
    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1759
    .end local v4    # "index":I
    :goto_81
    nop

    .line 1764
    :goto_82
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1765
    .local v4, "endPos":I
    sub-int v5, v8, v4

    sub-int v5, v7, v5

    .line 1766
    .local v5, "parameterLen":I
    if-lez v5, :cond_93

    .line 1767
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {p0, p1, v10}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1770
    :cond_93
    if-gez v5, :cond_a3

    .line 1771
    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v6, v9, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    return-object v6

    .line 1774
    .end local v1    # "first":I
    .end local v4    # "endPos":I
    .end local v5    # "parameterLen":I
    .end local v7    # "length":I
    .end local v8    # "startPos":I
    :cond_a3
    goto :goto_ce

    .line 1760
    .restart local v1    # "first":I
    .restart local v7    # "length":I
    .restart local v8    # "startPos":I
    :cond_a4
    const-string v4, "Corrupt content-type"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    sget-object v4, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4

    .line 1731
    .end local v1    # "first":I
    .end local v8    # "startPos":I
    :catch_b2
    move-exception v1

    .line 1732
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "parseValueLength Exception!"

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1733
    const/4 v4, 0x0

    return-object v4

    .line 1774
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "length":I
    :cond_bb
    if-gt v3, v5, :cond_c2

    .line 1775
    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_ce

    .line 1777
    :cond_c2
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .line 1778
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1781
    :goto_ce
    return-object v0
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .registers 15
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1544
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 1545
    nop

    .line 1547
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1548
    .local v0, "startPos":I
    const/4 v1, 0x0

    .line 1549
    .local v1, "tempPos":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1550
    .local v2, "lastLen":I
    :goto_b
    const-string v3, "Corrupt Content-Type"

    const-string v4, "PduParser"

    if-lez v2, :cond_110

    .line 1551
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1552
    .local v5, "param":I
    nop

    .line 1553
    add-int/lit8 v2, v2, -0x1

    .line 1555
    const/16 v6, 0x7f

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v5, :sswitch_data_116

    .line 1686
    invoke-static {p0, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v7, v6, :cond_10d

    .line 1687
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10e

    .line 1611
    :sswitch_2b
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1612
    .local v3, "start":[B
    if-eqz v3, :cond_3c

    if-eqz p1, :cond_3c

    .line 1613
    const/16 v4, 0x99

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    :cond_3c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1617
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1618
    .end local v2    # "lastLen":I
    .local v4, "lastLen":I
    move v2, v4

    goto/16 :goto_10e

    .line 1674
    .end local v3    # "start":[B
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :sswitch_4a
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1675
    .local v3, "name":[B
    if-eqz v3, :cond_5b

    if-eqz p1, :cond_5b

    .line 1676
    const/16 v4, 0x97

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    :cond_5b
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1680
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1681
    .end local v2    # "lastLen":I
    .restart local v4    # "lastLen":I
    move v2, v4

    goto/16 :goto_10e

    .line 1571
    .end local v3    # "name":[B
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :sswitch_69
    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1572
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 1573
    .local v3, "first":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1574
    const/16 v4, 0x83

    if-le v3, v6, :cond_90

    .line 1576
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 1578
    .local v6, "index":I
    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_8f

    .line 1579
    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 1580
    .local v7, "type":[B
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    .end local v6    # "index":I
    .end local v7    # "type":[B
    :cond_8f
    goto :goto_9f

    .line 1586
    :cond_90
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1587
    .local v6, "type":[B
    if-eqz v6, :cond_9f

    if-eqz p1, :cond_9f

    .line 1588
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    .end local v6    # "type":[B
    :cond_9f
    :goto_9f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1593
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1594
    .end local v2    # "lastLen":I
    .restart local v4    # "lastLen":I
    move v2, v4

    goto :goto_10e

    .line 1635
    .end local v3    # "first":I
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :sswitch_ac
    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1636
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 1637
    .local v3, "firstValue":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1639
    const/16 v7, 0x20

    const/16 v9, 0x81

    if-le v3, v7, :cond_be

    if-lt v3, v6, :cond_c0

    :cond_be
    if-nez v3, :cond_ee

    .line 1642
    :cond_c0
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1644
    .local v6, "charsetStr":[B
    :try_start_c4
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v7

    .line 1646
    .local v7, "charsetInt":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c4 .. :try_end_d8} :catch_da

    .line 1651
    nop

    .end local v7    # "charsetInt":I
    goto :goto_ed

    .line 1647
    :catch_da
    move-exception v7

    .line 1649
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1650
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    .end local v6    # "charsetStr":[B
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_ed
    goto :goto_100

    .line 1654
    :cond_ee
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    long-to-int v4, v6

    .line 1655
    .local v4, "charset":I
    if-eqz p1, :cond_100

    .line 1656
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    .end local v4    # "charset":I
    :cond_100
    :goto_100
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1661
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1662
    .end local v2    # "lastLen":I
    .local v4, "lastLen":I
    move v2, v4

    goto :goto_10e

    .line 1689
    .end local v3    # "firstValue":I
    .end local v4    # "lastLen":I
    .restart local v2    # "lastLen":I
    :cond_10d
    const/4 v2, 0x0

    .line 1693
    .end local v5    # "param":I
    :goto_10e
    goto/16 :goto_b

    .line 1695
    :cond_110
    if-eqz v2, :cond_115

    .line 1696
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    :cond_115
    return-void

    :sswitch_data_116
    .sparse-switch
        0x81 -> :sswitch_ac
        0x83 -> :sswitch_69
        0x85 -> :sswitch_4a
        0x89 -> :sswitch_69
        0x8a -> :sswitch_2b
        0x97 -> :sswitch_4a
        0x99 -> :sswitch_2b
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 8
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1196
    nop

    .line 1197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1198
    const/4 v0, 0x0

    .line 1199
    .local v0, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v1, 0x0

    .line 1200
    .local v1, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1201
    .local v2, "temp":I
    nop

    .line 1207
    const/4 v3, 0x0

    if-nez v2, :cond_10

    .line 1208
    return-object v3

    .line 1211
    :cond_10
    and-int/lit16 v4, v2, 0xff

    .line 1212
    .local v4, "first":I
    if-nez v4, :cond_1c

    .line 1213
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v5, ""

    invoke-direct {v3, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 1216
    :cond_1c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1217
    const/16 v5, 0x20

    if-ge v4, v5, :cond_34

    .line 1220
    :try_start_23
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_26} :catch_2c

    .line 1224
    nop

    .line 1226
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    goto :goto_34

    .line 1221
    :catch_2c
    move-exception v5

    .line 1222
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "parseValueLength Exception!"

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1223
    return-object v3

    .line 1229
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_34
    :goto_34
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 1232
    .local v5, "textString":[B
    if-eqz v1, :cond_42

    .line 1233
    :try_start_3b
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v1, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    move-object v0, v6

    goto :goto_48

    .line 1235
    :cond_42
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_47} :catch_4a

    move-object v0, v6

    .line 1239
    :goto_48
    nop

    .line 1241
    return-object v0

    .line 1237
    :catch_4a
    move-exception v6

    .line 1238
    .local v6, "e":Ljava/lang/Exception;
    return-object v3
.end method

.method protected static parseEncodedSubjectValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 8
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 2264
    nop

    .line 2265
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 2266
    const/4 v0, 0x0

    .line 2267
    .local v0, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v1, 0x0

    .line 2268
    .local v1, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 2269
    .local v2, "temp":I
    nop

    .line 2275
    const/4 v3, 0x0

    if-nez v2, :cond_10

    .line 2276
    return-object v3

    .line 2278
    :cond_10
    and-int/lit16 v4, v2, 0xff

    .line 2280
    .local v4, "first":I
    if-lez v4, :cond_43

    .line 2281
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 2282
    const/16 v5, 0x20

    if-ge v4, v5, :cond_2c

    .line 2284
    :try_start_1b
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1e} :catch_24

    .line 2288
    nop

    .line 2290
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    goto :goto_2c

    .line 2285
    :catch_24
    move-exception v5

    .line 2286
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "parseValueLength Exception!"

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 2287
    return-object v3

    .line 2293
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2c
    :goto_2c
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 2296
    .local v5, "textString":[B
    if-eqz v1, :cond_3a

    .line 2297
    :try_start_33
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v1, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    move-object v0, v6

    goto :goto_40

    .line 2299
    :cond_3a
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3f} :catch_41

    move-object v0, v6

    .line 2303
    :goto_40
    goto :goto_43

    .line 2301
    :catch_41
    move-exception v6

    .line 2302
    .local v6, "e":Ljava/lang/Exception;
    return-object v3

    .line 2305
    .end local v5    # "textString":[B
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    return-object v0
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .registers 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1486
    nop

    .line 1487
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1488
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1489
    .local v0, "temp":I
    nop

    .line 1490
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1491
    const/16 v1, 0x7f

    if-le v0, v1, :cond_17

    .line 1492
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 1494
    :cond_17
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    return-wide v1
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .registers 9
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1454
    nop

    .line 1455
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1456
    .local v0, "temp":I
    nop

    .line 1457
    and-int/lit16 v1, v0, 0xff

    .line 1459
    .local v1, "count":I
    const/16 v2, 0x8

    if-gt v1, v2, :cond_1f

    .line 1463
    const-wide/16 v3, 0x0

    .line 1465
    .local v3, "result":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f
    if-ge v5, v1, :cond_1e

    .line 1466
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1467
    nop

    .line 1468
    shl-long/2addr v3, v2

    .line 1469
    and-int/lit16 v6, v0, 0xff

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 1465
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 1472
    .end local v5    # "i":I
    :cond_1e
    return-wide v3

    .line 1460
    .end local v3    # "result":J
    :cond_1f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1431
    nop

    .line 1432
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1433
    .local v0, "temp":I
    nop

    .line 1434
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1131
    nop

    .line 1132
    const/4 v0, 0x0

    .line 1133
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1134
    .local v1, "temp":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 1135
    return v1

    .line 1138
    :cond_a
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1a

    .line 1139
    shl-int/lit8 v0, v0, 0x7

    .line 1140
    and-int/lit8 v3, v1, 0x7f

    or-int/2addr v0, v3

    .line 1141
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1142
    if-ne v1, v2, :cond_a

    .line 1143
    return v1

    .line 1147
    :cond_1a
    shl-int/lit8 v0, v0, 0x7

    .line 1148
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 1150
    return v0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1169
    nop

    .line 1170
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1171
    .local v0, "temp":I
    nop

    .line 1172
    and-int/lit16 v1, v0, 0xff

    .line 1174
    .local v1, "first":I
    const/16 v2, 0x1e

    if-gt v1, v2, :cond_d

    .line 1175
    return v1

    .line 1176
    :cond_d
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_16

    .line 1177
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    return v2

    .line 1181
    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .line 1254
    nop

    .line 1272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1275
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1276
    .local v1, "temp":I
    nop

    .line 1277
    if-ne v0, p1, :cond_14

    const/16 v2, 0x22

    if-ne v2, v1, :cond_14

    .line 1280
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_21

    .line 1281
    :cond_14
    if-nez p1, :cond_1e

    const/16 v2, 0x7f

    if-ne v2, v1, :cond_1e

    .line 1284
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_21

    .line 1287
    :cond_1e
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1295
    :goto_21
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .registers 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .line 1506
    nop

    .line 1507
    new-array v0, p1, [B

    .line 1508
    .local v0, "area":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1509
    .local v1, "readLen":I
    if-ge v1, p1, :cond_c

    .line 1510
    const/4 v2, -0x1

    return v2

    .line 1512
    :cond_c
    return v1
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .registers 10

    .line 125
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 126
    return-object v1

    .line 130
    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 131
    if-nez v0, :cond_f

    .line 133
    return-object v1

    .line 137
    :cond_f
    const/16 v2, 0x8c

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 143
    .local v0, "messageType":I
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v3, 0x84

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 148
    .local v2, "contType":[B
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 149
    const-string v3, "check mandatory headers failed!"

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 150
    return-object v1

    .line 153
    :cond_2b
    const/16 v4, 0x80

    const-string v5, "application/vnd.wap.multipart.mixed"

    const-string/jumbo v6, "text/plain"

    if-eq v4, v0, :cond_36

    if-ne v3, v0, :cond_55

    .line 157
    :cond_36
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v4, v2}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 159
    if-nez v4, :cond_41

    .line 161
    return-object v1

    .line 164
    :cond_41
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 165
    .local v4, "ctTypeStr":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 166
    iget-object v7, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 172
    .end local v4    # "ctTypeStr":Ljava/lang/String;
    :cond_55
    packed-switch v0, :pswitch_data_ec

    .line 259
    const-string v3, "Parser doesn\'t support this message type in this version!"

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 260
    return-object v1

    .line 248
    :pswitch_5e
    new-instance v1, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 250
    .local v1, "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    return-object v1

    .line 255
    .end local v1    # "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_66
    new-instance v1, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 257
    .local v1, "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    return-object v1

    .line 234
    .end local v1    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    :pswitch_6e
    new-instance v1, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 236
    .local v1, "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    return-object v1

    .line 241
    .end local v1    # "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_76
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 243
    .local v1, "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    return-object v1

    .line 203
    .end local v1    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7e
    new-instance v3, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v7, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v3, v4, v7}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 206
    .local v3, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v4

    .line 207
    .local v4, "contentType":[B
    if-nez v4, :cond_8e

    .line 208
    return-object v1

    .line 210
    :cond_8e
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    .line 211
    .local v7, "ctTypeStr":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c9

    .line 212
    const-string v5, "application/vnd.wap.multipart.related"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c9

    .line 214
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c9

    .line 216
    const-string v5, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    goto :goto_c9

    .line 221
    :cond_b0
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 224
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 225
    .local v1, "firstPart":Lcom/google/android/mms/pdu/PduPart;
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 226
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v6, v5, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 227
    return-object v3

    .line 229
    .end local v1    # "firstPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_c8
    return-object v1

    .line 220
    :cond_c9
    :goto_c9
    return-object v3

    .line 196
    .end local v3    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v4    # "contentType":[B
    .end local v7    # "ctTypeStr":Ljava/lang/String;
    :pswitch_ca
    new-instance v1, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 198
    .local v1, "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    return-object v1

    .line 189
    .end local v1    # "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_d2
    new-instance v1, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 191
    .local v1, "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    return-object v1

    .line 183
    .end local v1    # "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_da
    new-instance v1, Lcom/google/android/mms/pdu/SendConf;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v3}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 184
    .local v1, "sendConf":Lcom/google/android/mms/pdu/SendConf;
    return-object v1

    .line 177
    .end local v1    # "sendConf":Lcom/google/android/mms/pdu/SendConf;
    :pswitch_e2
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v1, v3, v4}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 178
    .local v1, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    return-object v1

    :pswitch_data_ec
    .packed-switch 0x80
        :pswitch_e2
        :pswitch_da
        :pswitch_d2
        :pswitch_ca
        :pswitch_7e
        :pswitch_76
        :pswitch_6e
        :pswitch_66
        :pswitch_5e
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .registers 20
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 271
    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 272
    return-object v2

    .line 274
    :cond_6
    const/4 v0, 0x1

    .line 275
    .local v0, "keepParsing":Z
    new-instance v3, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    move v4, v0

    .line 277
    .end local v0    # "keepParsing":Z
    .local v3, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .local v4, "keepParsing":Z
    :goto_d
    if-eqz v4, :cond_521

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_521

    .line 278
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 279
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 281
    .local v5, "headerField":I
    const/16 v6, 0x20

    const/4 v7, 0x0

    if-lt v5, v6, :cond_2e

    const/16 v6, 0x7f

    if-gt v5, v6, :cond_2e

    .line 282
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 283
    invoke-static {v1, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 288
    .local v0, "bVal":[B
    goto :goto_d

    .line 290
    .end local v0    # "bVal":[B
    :cond_2e
    const/16 v6, 0x81

    const-string v10, "/"

    const-string v12, " is not Integer-Value"

    const-string/jumbo v13, "is not Octet header field!"

    const-string v14, " into the header filed: "

    const-string v15, "Set invalid Octet value: "

    const/16 v8, 0x80

    const-string/jumbo v9, "is not Text-String header field!"

    const-string/jumbo v7, "is not Encoded-String-Value header field!"

    const-string/jumbo v16, "parseValueLength Exception!"

    const-string/jumbo v11, "is not Long-Integer header field!"

    const-string/jumbo v17, "null pointer error!"

    packed-switch v5, :pswitch_data_522

    .line 937
    :pswitch_4f
    const-string v0, "Unknown header"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_51f

    .line 892
    :pswitch_56
    invoke-static {v1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    .line 896
    goto/16 :goto_51f

    .line 421
    :pswitch_5b
    :try_start_5b
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    .line 426
    .local v6, "value":J
    invoke-virtual {v3, v6, v7, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_62} :catch_64

    .line 430
    .end local v6    # "value":J
    goto/16 :goto_51f

    .line 427
    :catch_64
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 429
    return-object v2

    .line 865
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_7a
    :try_start_7a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_7d} :catch_9e

    .line 869
    nop

    .line 873
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 877
    :try_start_81
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_84
    .catch Ljava/lang/RuntimeException; {:try_start_81 .. :try_end_84} :catch_86

    .line 881
    goto/16 :goto_51f

    .line 878
    :catch_86
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 879
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 880
    return-object v2

    .line 866
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_9e
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 867
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 868
    return-object v2

    .line 836
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_a5
    :try_start_a5
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a5 .. :try_end_a8} :catch_b1

    .line 840
    nop

    .line 844
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 847
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 851
    goto/16 :goto_51f

    .line 837
    :catch_b1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 838
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 839
    return-object v2

    .line 791
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_b8
    :try_start_b8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_bb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b8 .. :try_end_bb} :catch_f9

    .line 795
    nop

    .line 800
    :try_start_bc
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_bf
    .catch Ljava/lang/RuntimeException; {:try_start_bc .. :try_end_bf} :catch_e1

    .line 804
    nop

    .line 808
    :try_start_c0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    .line 813
    .local v6, "perviouslySentDate":J
    const/16 v0, 0xa1

    invoke-virtual {v3, v6, v7, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_c9
    .catch Ljava/lang/RuntimeException; {:try_start_c0 .. :try_end_c9} :catch_cb

    .line 818
    .end local v6    # "perviouslySentDate":J
    goto/16 :goto_51f

    .line 815
    :catch_cb
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 817
    return-object v2

    .line 801
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_e1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 802
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 803
    return-object v2

    .line 792
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_f9
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 793
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 794
    return-object v2

    .line 749
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_100
    :try_start_100
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_103
    .catch Ljava/lang/IllegalArgumentException; {:try_start_100 .. :try_end_103} :catch_14d

    .line 753
    nop

    .line 758
    :try_start_104
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_107
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_107} :catch_135

    .line 762
    nop

    .line 765
    nop

    .line 766
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 767
    .local v6, "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_51f

    .line 773
    const/16 v0, 0xa0

    :try_start_111
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_114
    .catch Ljava/lang/NullPointerException; {:try_start_111 .. :try_end_114} :catch_12e
    .catch Ljava/lang/RuntimeException; {:try_start_111 .. :try_end_114} :catch_116

    .line 780
    :goto_114
    goto/16 :goto_51f

    .line 777
    :catch_116
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 778
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 779
    return-object v2

    .line 775
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_12e
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 776
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_114

    .line 759
    .end local v6    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_135
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 760
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 761
    return-object v2

    .line 750
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_14d
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 751
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 752
    return-object v2

    .line 478
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_154
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedSubjectValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 479
    .local v6, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_17e

    .line 481
    :try_start_15a
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_15d
    .catch Ljava/lang/NullPointerException; {:try_start_15a .. :try_end_15d} :catch_177
    .catch Ljava/lang/RuntimeException; {:try_start_15a .. :try_end_15d} :catch_15f

    .line 487
    :goto_15d
    goto/16 :goto_51f

    .line 484
    :catch_15f
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 485
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 486
    return-object v2

    .line 482
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_177
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 483
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_15d

    .line 489
    :cond_17e
    const-string v0, "Subject is null!"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 491
    goto/16 :goto_51f

    .line 503
    .end local v6    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_185
    nop

    .line 504
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 505
    .restart local v6    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_51f

    .line 511
    :try_start_18c
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_18f
    .catch Ljava/lang/NullPointerException; {:try_start_18c .. :try_end_18f} :catch_1a9
    .catch Ljava/lang/RuntimeException; {:try_start_18c .. :try_end_18f} :catch_191

    .line 517
    :goto_18f
    goto/16 :goto_51f

    .line 514
    :catch_191
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 515
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 516
    return-object v2

    .line 512
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1a9
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 513
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_18f

    .line 384
    .end local v6    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_1b0
    :try_start_1b0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    .line 389
    .local v6, "value":J
    invoke-virtual {v3, v6, v7, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_1b7
    .catch Ljava/lang/RuntimeException; {:try_start_1b0 .. :try_end_1b7} :catch_1b9

    .line 393
    .end local v6    # "value":J
    goto/16 :goto_51f

    .line 390
    :catch_1b9
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 392
    return-object v2

    .line 724
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_1cf
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 731
    .local v6, "version":I
    const/16 v0, 0x8d

    :try_start_1d5
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1d8
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1d5 .. :try_end_1d8} :catch_1f2
    .catch Ljava/lang/RuntimeException; {:try_start_1d5 .. :try_end_1d8} :catch_1da

    .line 739
    goto/16 :goto_51f

    .line 736
    :catch_1da
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 737
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 738
    return-object v2

    .line 732
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1f2
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 733
    .local v0, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 735
    return-object v2

    .line 293
    .end local v0    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    .end local v6    # "version":I
    :pswitch_212
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 297
    .local v6, "messageType":I
    packed-switch v6, :pswitch_data_5a4

    .line 317
    :try_start_219
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_21c
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_219 .. :try_end_21c} :catch_238
    .catch Ljava/lang/RuntimeException; {:try_start_219 .. :try_end_21c} :catch_220

    goto :goto_21e

    .line 314
    :pswitch_21d
    return-object v2

    .line 325
    :goto_21e
    goto/16 :goto_51f

    .line 322
    :catch_220
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 323
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 324
    return-object v2

    .line 318
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_238
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 319
    .local v0, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 321
    return-object v2

    .line 672
    .end local v0    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    .end local v6    # "messageType":I
    :pswitch_258
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 673
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 679
    .local v7, "messageClass":I
    const/16 v0, 0x8a

    if-lt v7, v8, :cond_2b7

    .line 682
    if-ne v8, v7, :cond_274

    .line 683
    :try_start_265
    const-string/jumbo v6, "personal"

    .line 684
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 683
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_2b5

    .line 701
    :catch_270
    move-exception v0

    goto :goto_29d

    .line 699
    :catch_272
    move-exception v0

    goto :goto_2b2

    .line 686
    :cond_274
    if-ne v6, v7, :cond_280

    .line 687
    const-string v6, "advertisement"

    .line 688
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 687
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_2b5

    .line 690
    :cond_280
    const/16 v6, 0x82

    if-ne v6, v7, :cond_28f

    .line 691
    const-string/jumbo v6, "informational"

    .line 692
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 691
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_2b5

    .line 694
    :cond_28f
    const/16 v6, 0x83

    if-ne v6, v7, :cond_2b5

    .line 695
    const-string v6, "auto"

    .line 696
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 695
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_29c
    .catch Ljava/lang/NullPointerException; {:try_start_265 .. :try_end_29c} :catch_272
    .catch Ljava/lang/RuntimeException; {:try_start_265 .. :try_end_29c} :catch_270

    goto :goto_2b5

    .line 702
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_29d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 703
    return-object v2

    .line 700
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_2b2
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 704
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2b5
    :goto_2b5
    goto/16 :goto_51f

    .line 707
    :cond_2b7
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 708
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 709
    .local v6, "messageClassString":[B
    if-eqz v6, :cond_2e4

    .line 711
    :try_start_2c1
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_2c4
    .catch Ljava/lang/NullPointerException; {:try_start_2c1 .. :try_end_2c4} :catch_2dd
    .catch Ljava/lang/RuntimeException; {:try_start_2c1 .. :try_end_2c4} :catch_2c5

    .line 717
    :goto_2c4
    goto :goto_2e4

    .line 714
    :catch_2c5
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 715
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 716
    return-object v2

    .line 712
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2dd
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 713
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_2c4

    .line 720
    .end local v6    # "messageClassString":[B
    :cond_2e4
    :goto_2e4
    goto/16 :goto_51f

    .line 612
    .end local v7    # "messageClass":I
    :pswitch_2e6
    const/4 v6, 0x0

    .line 615
    .local v6, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_2e7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_2ea
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e7 .. :try_end_2ea} :catch_368

    .line 619
    nop

    .line 623
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 626
    .local v9, "fromToken":I
    if-ne v8, v9, :cond_31e

    .line 628
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 629
    if-eqz v6, :cond_32c

    .line 630
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v8

    .line 631
    .local v8, "address":[B
    if-eqz v8, :cond_31d

    .line 632
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 633
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 634
    .local v10, "endIndex":I
    if-lez v10, :cond_30f

    .line 635
    const/4 v11, 0x0

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_310

    .line 634
    :cond_30f
    move-object v11, v0

    .line 638
    .end local v0    # "str":Ljava/lang/String;
    .local v11, "str":Ljava/lang/String;
    :goto_310
    :try_start_310
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_317
    .catch Ljava/lang/NullPointerException; {:try_start_310 .. :try_end_317} :catch_318

    .line 642
    goto :goto_31d

    .line 639
    :catch_318
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 641
    return-object v2

    .line 644
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "address":[B
    .end local v10    # "endIndex":I
    .end local v11    # "str":Ljava/lang/String;
    :cond_31d
    :goto_31d
    goto :goto_32c

    .line 647
    :cond_31e
    :try_start_31e
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string/jumbo v8, "insert-address-token"

    .line 648
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_32a
    .catch Ljava/lang/NullPointerException; {:try_start_31e .. :try_end_32a} :catch_352

    move-object v6, v0

    .line 652
    nop

    .line 660
    :cond_32c
    :goto_32c
    const/16 v0, 0x89

    :try_start_32e
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_331
    .catch Ljava/lang/NullPointerException; {:try_start_32e .. :try_end_331} :catch_34b
    .catch Ljava/lang/RuntimeException; {:try_start_32e .. :try_end_331} :catch_333

    .line 666
    :goto_331
    goto/16 :goto_51f

    .line 663
    :catch_333
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 664
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 665
    return-object v2

    .line 661
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_34b
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 662
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_331

    .line 649
    :catch_352
    move-exception v0

    .line 650
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 651
    return-object v2

    .line 616
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "fromToken":I
    :catch_368
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 617
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 618
    return-object v2

    .line 570
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_36f
    :try_start_36f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_372
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36f .. :try_end_372} :catch_3bb

    .line 574
    nop

    .line 578
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 583
    .local v7, "token":I
    :try_start_377
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v8
    :try_end_37b
    .catch Ljava/lang/RuntimeException; {:try_start_377 .. :try_end_37b} :catch_3a3

    .line 587
    .local v8, "timeValue":J
    nop

    .line 588
    if-ne v6, v7, :cond_386

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    add-long/2addr v8, v12

    .line 599
    :cond_386
    :try_start_386
    invoke-virtual {v3, v8, v9, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_389
    .catch Ljava/lang/RuntimeException; {:try_start_386 .. :try_end_389} :catch_38b

    .line 603
    goto/16 :goto_51f

    .line 600
    :catch_38b
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 601
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 602
    return-object v2

    .line 584
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "timeValue":J
    :catch_3a3
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 585
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 586
    return-object v2

    .line 571
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "token":I
    :catch_3bb
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 572
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 573
    return-object v2

    .line 357
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_3c2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 364
    .local v6, "value":I
    :try_start_3c6
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_3c9
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3c6 .. :try_end_3c9} :catch_3e3
    .catch Ljava/lang/RuntimeException; {:try_start_3c6 .. :try_end_3c9} :catch_3cb

    .line 372
    goto/16 :goto_51f

    .line 369
    :catch_3cb
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 370
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 371
    return-object v2

    .line 365
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_3e3
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 366
    .local v0, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 368
    return-object v2

    .line 400
    .end local v0    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    .end local v6    # "value":I
    :pswitch_403
    :try_start_403
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    .line 402
    .local v6, "value":J
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->mEnableMmsServerTime:Z

    if-nez v0, :cond_436

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    move-wide v6, v8

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mEnableMmsServerTime = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->mEnableMmsServerTime:Z

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " Time value = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 407
    :cond_436
    invoke-virtual {v3, v6, v7, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_439
    .catch Ljava/lang/RuntimeException; {:try_start_403 .. :try_end_439} :catch_43b

    .line 411
    .end local v6    # "value":J
    goto/16 :goto_51f

    .line 408
    :catch_43b
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 410
    return-object v2

    .line 900
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    .line 902
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 903
    invoke-static {v1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v7

    .line 905
    .local v7, "contentType":[B
    if-eqz v7, :cond_483

    .line 911
    const/16 v0, 0x84

    :try_start_460
    invoke-virtual {v3, v7, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_463
    .catch Ljava/lang/NullPointerException; {:try_start_460 .. :try_end_463} :catch_47c
    .catch Ljava/lang/RuntimeException; {:try_start_460 .. :try_end_463} :catch_464

    .line 917
    :goto_463
    goto :goto_483

    .line 914
    :catch_464
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 915
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 916
    return-object v2

    .line 912
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_47c
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 913
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_463

    .line 921
    :cond_483
    :goto_483
    const/16 v0, 0x99

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 924
    const/16 v8, 0x83

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 926
    const/4 v0, 0x0

    .line 927
    .end local v4    # "keepParsing":Z
    .local v0, "keepParsing":Z
    move v4, v0

    goto/16 :goto_51f

    .line 455
    .end local v0    # "keepParsing":Z
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v7    # "contentType":[B
    .restart local v4    # "keepParsing":Z
    :pswitch_4a3
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 456
    .local v6, "value":[B
    if-eqz v6, :cond_51f

    .line 462
    :try_start_4aa
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4ad
    .catch Ljava/lang/NullPointerException; {:try_start_4aa .. :try_end_4ad} :catch_4c7
    .catch Ljava/lang/RuntimeException; {:try_start_4aa .. :try_end_4ad} :catch_4af

    .line 468
    :goto_4ad
    goto/16 :goto_51f

    .line 465
    :catch_4af
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 466
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 467
    return-object v2

    .line 463
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_4c7
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 464
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_4ad

    .line 527
    .end local v6    # "value":[B
    :pswitch_4ce
    nop

    .line 528
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 529
    .local v6, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_51f

    .line 530
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v8

    .line 531
    .local v8, "address":[B
    if-eqz v8, :cond_4fb

    .line 532
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 537
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 538
    .local v9, "endIndex":I
    if-lez v9, :cond_4ed

    .line 539
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_4ee

    .line 538
    :cond_4ed
    move-object v10, v0

    .line 542
    .end local v0    # "str":Ljava/lang/String;
    .local v10, "str":Ljava/lang/String;
    :goto_4ee
    :try_start_4ee
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_4f5
    .catch Ljava/lang/NullPointerException; {:try_start_4ee .. :try_end_4f5} :catch_4f6

    .line 546
    goto :goto_4fb

    .line 543
    :catch_4f6
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 545
    return-object v2

    .line 550
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v9    # "endIndex":I
    .end local v10    # "str":Ljava/lang/String;
    :cond_4fb
    :goto_4fb
    :try_start_4fb
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_4fe
    .catch Ljava/lang/NullPointerException; {:try_start_4fb .. :try_end_4fe} :catch_517
    .catch Ljava/lang/RuntimeException; {:try_start_4fb .. :try_end_4fe} :catch_4ff

    .line 556
    :goto_4fe
    goto :goto_51e

    .line 553
    :catch_4ff
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 554
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 555
    return-object v2

    .line 551
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_517
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 552
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_4fe

    .line 557
    .end local v8    # "address":[B
    :goto_51e
    nop

    .line 940
    .end local v5    # "headerField":I
    .end local v6    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_51f
    :goto_51f
    goto/16 :goto_d

    .line 942
    :cond_521
    return-object v3

    :pswitch_data_522
    .packed-switch 0x81
        :pswitch_4ce
        :pswitch_4ce
        :pswitch_4a3
        :pswitch_451
        :pswitch_403
        :pswitch_3c2
        :pswitch_36f
        :pswitch_36f
        :pswitch_2e6
        :pswitch_258
        :pswitch_4a3
        :pswitch_212
        :pswitch_1cf
        :pswitch_1b0
        :pswitch_3c2
        :pswitch_3c2
        :pswitch_3c2
        :pswitch_3c2
        :pswitch_185
        :pswitch_3c2
        :pswitch_3c2
        :pswitch_154
        :pswitch_4ce
        :pswitch_4a3
        :pswitch_3c2
        :pswitch_185
        :pswitch_3c2
        :pswitch_3c2
        :pswitch_36f
        :pswitch_4a3
        :pswitch_1b0
        :pswitch_100
        :pswitch_b8
        :pswitch_3c2
        :pswitch_3c2
        :pswitch_a5
        :pswitch_3c2
        :pswitch_185
        :pswitch_3c2
        :pswitch_4f
        :pswitch_3c2
        :pswitch_7a
        :pswitch_3c2
        :pswitch_7a
        :pswitch_5b
        :pswitch_4f
        :pswitch_5b
        :pswitch_4f
        :pswitch_3c2
        :pswitch_56
        :pswitch_5b
        :pswitch_3c2
        :pswitch_185
        :pswitch_185
        :pswitch_4a3
        :pswitch_4a3
        :pswitch_4a3
        :pswitch_3c2
        :pswitch_3c2
        :pswitch_3c2
        :pswitch_4a3
        :pswitch_4a3
        :pswitch_3c2
    .end packed-switch

    :pswitch_data_5a4
    .packed-switch 0x89
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
        :pswitch_21d
    .end packed-switch
.end method

.method protected parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .registers 15
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p3, "length"    # I

    .line 1795
    nop

    .line 1796
    nop

    .line 1797
    nop

    .line 1815
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1816
    .local v0, "startPos":I
    const/4 v1, 0x0

    .line 1817
    .local v1, "tempPos":I
    move v2, p3

    .line 1818
    .local v2, "lastLen":I
    :goto_9
    const-string v3, "Corrupt Part headers"

    const-string v4, "PduParser"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_fd

    .line 1819
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    .line 1820
    .local v7, "header":I
    nop

    .line 1821
    add-int/lit8 v2, v2, -0x1

    .line 1823
    const/16 v8, 0x7f

    const/4 v9, -0x1

    if-le v7, v8, :cond_c9

    .line 1825
    sparse-switch v7, :sswitch_data_104

    .line 1921
    invoke-static {p1, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v5

    if-ne v9, v5, :cond_c7

    .line 1922
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    return v6

    .line 1844
    :sswitch_2a
    invoke-static {p1, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1845
    .local v3, "contentId":[B
    if-eqz v3, :cond_33

    .line 1846
    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1849
    :cond_33
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1850
    sub-int v4, v0, v1

    sub-int v2, p3, v4

    .line 1851
    goto/16 :goto_fb

    .line 1867
    .end local v3    # "contentId":[B
    :sswitch_3d
    iget-boolean v3, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    if-eqz v3, :cond_fb

    .line 1869
    const/4 v3, 0x0

    .line 1871
    .local v3, "len":I
    :try_start_42
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v4
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_46} :catch_ad

    move v3, v4

    .line 1875
    nop

    .line 1877
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1878
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1879
    .local v4, "thisStartPos":I
    const/4 v5, 0x0

    .line 1880
    .local v5, "thisEndPos":I
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1882
    .local v8, "value":I
    const/16 v9, 0x80

    if-ne v8, v9, :cond_5e

    .line 1883
    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_7c

    .line 1884
    :cond_5e
    const/16 v9, 0x81

    if-ne v8, v9, :cond_68

    .line 1885
    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_7c

    .line 1886
    :cond_68
    const/16 v9, 0x82

    if-ne v8, v9, :cond_72

    .line 1887
    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_7c

    .line 1889
    :cond_72
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1891
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1896
    :goto_7c
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 1897
    sub-int v9, v4, v5

    if-ge v9, v3, :cond_a4

    .line 1898
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1899
    const/16 v9, 0x98

    if-ne v8, v9, :cond_93

    .line 1900
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1905
    :cond_93
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 1906
    sub-int v9, v4, v5

    if-ge v9, v3, :cond_a4

    .line 1907
    sub-int v9, v4, v5

    sub-int v9, v3, v9

    .line 1908
    .local v9, "last":I
    new-array v10, v9, [B

    .line 1909
    .local v10, "temp":[B
    invoke-virtual {p1, v10, v6, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1913
    .end local v9    # "last":I
    .end local v10    # "temp":[B
    :cond_a4
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1914
    sub-int v6, v0, v1

    sub-int v2, p3, v6

    .line 1915
    .end local v3    # "len":I
    .end local v4    # "thisStartPos":I
    .end local v5    # "thisEndPos":I
    .end local v8    # "value":I
    goto :goto_fb

    .line 1872
    .restart local v3    # "len":I
    :catch_ad
    move-exception v4

    .line 1873
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "parseValueLength Exception!"

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1874
    return v6

    .line 1831
    .end local v3    # "len":I
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :sswitch_b5
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1832
    .local v3, "contentLocation":[B
    if-eqz v3, :cond_be

    .line 1833
    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1836
    :cond_be
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1837
    sub-int v4, v0, v1

    sub-int v2, p3, v4

    .line 1838
    goto :goto_fb

    .line 1925
    .end local v3    # "contentLocation":[B
    :cond_c7
    const/4 v2, 0x0

    .line 1926
    goto :goto_fb

    .line 1928
    :cond_c9
    const/16 v10, 0x20

    if-lt v7, v10, :cond_f0

    if-gt v7, v8, :cond_f0

    .line 1930
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1931
    .local v3, "tempHeader":[B
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1934
    .local v4, "tempValue":[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    .line 1935
    const-string v8, "Content-Transfer-Encoding"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-ne v5, v6, :cond_e7

    .line 1936
    invoke-virtual {p2, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1939
    :cond_e7
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1940
    sub-int v5, v0, v1

    sub-int v2, p3, v5

    .line 1941
    .end local v3    # "tempHeader":[B
    .end local v4    # "tempValue":[B
    goto :goto_fb

    .line 1946
    :cond_f0
    invoke-static {p1, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v5

    if-ne v9, v5, :cond_fa

    .line 1947
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    return v6

    .line 1950
    :cond_fa
    const/4 v2, 0x0

    .line 1952
    .end local v7    # "header":I
    :cond_fb
    :goto_fb
    goto/16 :goto_9

    .line 1954
    :cond_fd
    if-eqz v2, :cond_103

    .line 1955
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    return v6

    .line 1959
    :cond_103
    return v5

    :sswitch_data_104
    .sparse-switch
        0x8e -> :sswitch_b5
        0xae -> :sswitch_3d
        0xc0 -> :sswitch_2a
        0xc5 -> :sswitch_3d
    .end sparse-switch
.end method

.method protected parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;
    .registers 25
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "contType"    # [B

    .line 955
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    .line 956
    return-object v2

    .line 959
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 960
    .local v3, "count":I
    new-instance v4, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 962
    .local v4, "body":Lcom/google/android/mms/pdu/PduBody;
    new-instance v5, Ljava/lang/String;

    move-object/from16 v6, p2

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 963
    .local v5, "ctTypeStr":Ljava/lang/String;
    const-string v7, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_95

    .line 964
    const-string v7, "application/vnd.wap.multipart.related"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    goto :goto_95

    .line 1075
    :cond_2a
    const-string/jumbo v7, "text/plain"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_94

    .line 1077
    new-instance v2, Ljava/lang/String;

    const-string v9, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par><text src=\"attach.txt\" region=\"Text\"/></par></body></smil>"

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v2, "smilDoc":Ljava/lang/String;
    new-instance v9, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v9}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1083
    .local v9, "smilPart":Lcom/google/android/mms/pdu/PduPart;
    const-string/jumbo v10, "smil.txt"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1084
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1085
    const-string v10, "application/smil"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1086
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1087
    invoke-virtual {v4, v8, v9}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 1089
    new-instance v10, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v10}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1090
    .local v10, "part":Lcom/google/android/mms/pdu/PduPart;
    const-string v11, "attach.txt"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1091
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1092
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1093
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1094
    .local v7, "dataLength":I
    new-array v11, v7, [B

    .line 1095
    .local v11, "partData":[B
    invoke-virtual {v1, v11, v8, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1096
    invoke-virtual {v10, v11}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1097
    invoke-virtual {v4, v10}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 1098
    .end local v2    # "smilDoc":Ljava/lang/String;
    .end local v7    # "dataLength":I
    .end local v9    # "smilPart":Lcom/google/android/mms/pdu/PduPart;
    .end local v10    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v11    # "partData":[B
    move/from16 v17, v3

    move-object/from16 v20, v5

    goto/16 :goto_1d8

    .line 1099
    :cond_94
    return-object v2

    .line 966
    :cond_95
    :goto_95
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_96
    if-ge v7, v3, :cond_1d4

    .line 967
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 968
    .local v9, "headerLength":I
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 969
    .local v10, "dataLength":I
    new-instance v11, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 970
    .local v11, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 971
    .local v12, "startPos":I
    if-gtz v12, :cond_ac

    .line 973
    return-object v2

    .line 977
    :cond_ac
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 978
    .local v13, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1, v13}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v14

    .line 979
    .local v14, "contentType":[B
    if-eqz v14, :cond_bb

    .line 980
    invoke-virtual {v11, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_c6

    .line 982
    :cond_bb
    sget-object v15, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v15, v15, v8

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 986
    :goto_c6
    const/16 v15, 0x97

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 987
    .local v15, "name":[B
    if-eqz v15, :cond_d7

    .line 988
    invoke-virtual {v11, v15}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 992
    :cond_d7
    const/16 v16, 0x81

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 993
    .local v8, "charset":Ljava/lang/Integer;
    if-eqz v8, :cond_ec

    .line 994
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 998
    :cond_ec
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 999
    .local v2, "endPos":I
    sub-int v17, v12, v2

    move/from16 v18, v2

    .end local v2    # "endPos":I
    .local v18, "endPos":I
    sub-int v2, v9, v17

    .line 1000
    .local v2, "partHeaderLen":I
    if-lez v2, :cond_104

    .line 1001
    invoke-virtual {v0, v1, v11, v2}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v17

    if-nez v17, :cond_101

    .line 1003
    const/16 v16, 0x0

    return-object v16

    .line 1001
    :cond_101
    const/16 v16, 0x0

    goto :goto_109

    .line 1005
    :cond_104
    const/16 v16, 0x0

    if-gez v2, :cond_109

    .line 1007
    return-object v16

    .line 1013
    :cond_109
    :goto_109
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v17

    if-nez v17, :cond_13d

    .line 1014
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v17

    if-nez v17, :cond_13a

    .line 1015
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v17

    if-nez v17, :cond_137

    .line 1016
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v17

    if-nez v17, :cond_134

    .line 1017
    nop

    .line 1018
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 1017
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v17

    .line 1018
    move/from16 v19, v2

    .end local v2    # "partHeaderLen":I
    .local v19, "partHeaderLen":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1017
    invoke-virtual {v11, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    goto :goto_13f

    .line 1016
    .end local v19    # "partHeaderLen":I
    .restart local v2    # "partHeaderLen":I
    :cond_134
    move/from16 v19, v2

    .end local v2    # "partHeaderLen":I
    .restart local v19    # "partHeaderLen":I
    goto :goto_13f

    .line 1015
    .end local v19    # "partHeaderLen":I
    .restart local v2    # "partHeaderLen":I
    :cond_137
    move/from16 v19, v2

    .end local v2    # "partHeaderLen":I
    .restart local v19    # "partHeaderLen":I
    goto :goto_13f

    .line 1014
    .end local v19    # "partHeaderLen":I
    .restart local v2    # "partHeaderLen":I
    :cond_13a
    move/from16 v19, v2

    .end local v2    # "partHeaderLen":I
    .restart local v19    # "partHeaderLen":I
    goto :goto_13f

    .line 1013
    .end local v19    # "partHeaderLen":I
    .restart local v2    # "partHeaderLen":I
    :cond_13d
    move/from16 v19, v2

    .line 1022
    .end local v2    # "partHeaderLen":I
    .restart local v19    # "partHeaderLen":I
    :goto_13f
    if-lez v10, :cond_1b2

    .line 1023
    new-array v2, v10, [B

    .line 1024
    .local v2, "partData":[B
    move/from16 v17, v3

    .end local v3    # "count":I
    .local v17, "count":I
    new-instance v3, Ljava/lang/String;

    move-object/from16 v20, v5

    .end local v5    # "ctTypeStr":Ljava/lang/String;
    .local v20, "ctTypeStr":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 1025
    .local v3, "partContentType":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v10}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v6

    .line 1027
    .local v6, "pduDataStreamCount":I
    const/4 v5, -0x1

    if-ne v6, v5, :cond_15a

    .line 1028
    const/4 v5, 0x0

    return-object v5

    .line 1030
    :cond_15a
    const-string v5, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17a

    .line 1033
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v5, v14}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;[B)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 1036
    .local v5, "childBody":Lcom/google/android/mms/pdu/PduBody;
    if-nez v5, :cond_173

    .line 1037
    const-string v21, "childBody is null"

    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_178

    .line 1040
    :cond_173
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v11

    .line 1042
    .end local v5    # "childBody":Lcom/google/android/mms/pdu/PduBody;
    :goto_178
    const/4 v0, 0x0

    goto :goto_1b7

    .line 1044
    :cond_17a
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v0

    .line 1045
    .local v0, "partDataEncoding":[B
    if-eqz v0, :cond_1a2

    .line 1046
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 1047
    .local v5, "encoding":Ljava/lang/String;
    move-object/from16 v21, v0

    .end local v0    # "partDataEncoding":[B
    .local v21, "partDataEncoding":[B
    const-string v0, "base64"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 1049
    invoke-static {v2}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v2

    goto :goto_1a4

    .line 1050
    :cond_194
    const-string/jumbo v0, "quoted-printable"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 1052
    invoke-static {v2}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v2

    goto :goto_1a4

    .line 1045
    .end local v5    # "encoding":Ljava/lang/String;
    .end local v21    # "partDataEncoding":[B
    .restart local v0    # "partDataEncoding":[B
    :cond_1a2
    move-object/from16 v21, v0

    .line 1057
    .end local v0    # "partDataEncoding":[B
    .restart local v21    # "partDataEncoding":[B
    :cond_1a4
    :goto_1a4
    if-nez v2, :cond_1ad

    .line 1058
    const-string v0, "Decode part data error!"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1059
    const/4 v0, 0x0

    return-object v0

    .line 1061
    :cond_1ad
    const/4 v0, 0x0

    invoke-virtual {v11, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_1b7

    .line 1022
    .end local v2    # "partData":[B
    .end local v6    # "pduDataStreamCount":I
    .end local v17    # "count":I
    .end local v20    # "ctTypeStr":Ljava/lang/String;
    .end local v21    # "partDataEncoding":[B
    .local v3, "count":I
    .local v5, "ctTypeStr":Ljava/lang/String;
    :cond_1b2
    move/from16 v17, v3

    move-object/from16 v20, v5

    const/4 v0, 0x0

    .line 1066
    .end local v3    # "count":I
    .end local v5    # "ctTypeStr":Ljava/lang/String;
    .restart local v17    # "count":I
    .restart local v20    # "ctTypeStr":Ljava/lang/String;
    :goto_1b7
    invoke-static {v11}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v2

    if-nez v2, :cond_1c2

    .line 1068
    const/4 v2, 0x0

    invoke-virtual {v4, v2, v11}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto :goto_1c6

    .line 1071
    :cond_1c2
    const/4 v2, 0x0

    invoke-virtual {v4, v11}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 966
    .end local v8    # "charset":Ljava/lang/Integer;
    .end local v9    # "headerLength":I
    .end local v10    # "dataLength":I
    .end local v11    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v12    # "startPos":I
    .end local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v14    # "contentType":[B
    .end local v15    # "name":[B
    .end local v18    # "endPos":I
    .end local v19    # "partHeaderLen":I
    :goto_1c6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, p2

    move v8, v2

    move/from16 v3, v17

    move-object/from16 v5, v20

    move-object v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_96

    .end local v17    # "count":I
    .end local v20    # "ctTypeStr":Ljava/lang/String;
    .restart local v3    # "count":I
    .restart local v5    # "ctTypeStr":Ljava/lang/String;
    :cond_1d4
    move/from16 v17, v3

    move-object/from16 v20, v5

    .line 1103
    .end local v3    # "count":I
    .end local v5    # "ctTypeStr":Ljava/lang/String;
    .end local v7    # "i":I
    .restart local v17    # "count":I
    .restart local v20    # "ctTypeStr":Ljava/lang/String;
    :goto_1d8
    return-object v4
.end method
