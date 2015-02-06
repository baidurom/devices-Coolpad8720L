.class final enum Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;
.super Ljava/lang/Enum;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ComprehensionTlvTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum ADDR_ID:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum ALPHA_ID:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum DATETIME_TIMEZONE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum DEFAULT_TEXT:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum DURATION:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum EVENT_LIST:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum FILE_LIST:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum HELP_REQUEST:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum ICON_ID:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum ITEM:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum ITEM_ID:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum LANGUAGE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum RESPONSE_LENGTH:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum RESULT:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum SMS_TPDU:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum TEXT_ATTRIBUTE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum TEXT_STRING:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum TONE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum URL:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

.field public static final enum USSD_STRING:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 971
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "COMMAND_DETAILS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 972
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "DEVICE_IDENTITIES"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 973
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "RESULT"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 974
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "DURATION"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 975
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "ALPHA_ID"

    invoke-direct {v0, v1, v7, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 976
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "ADDR_ID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->ADDR_ID:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 977
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "USSD_STRING"

    const/4 v2, 0x6

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 978
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "SMS_TPDU"

    const/4 v2, 0x7

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 979
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "TEXT_STRING"

    const/16 v2, 0x8

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 980
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "TONE"

    const/16 v2, 0x9

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 981
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "ITEM"

    const/16 v2, 0xa

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 982
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "ITEM_ID"

    const/16 v2, 0xb

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 983
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "RESPONSE_LENGTH"

    const/16 v2, 0xc

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 984
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "FILE_LIST"

    const/16 v2, 0xd

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->FILE_LIST:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 985
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "HELP_REQUEST"

    const/16 v2, 0xe

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 986
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "DEFAULT_TEXT"

    const/16 v2, 0xf

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 987
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "EVENT_LIST"

    const/16 v2, 0x10

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 988
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "ICON_ID"

    const/16 v2, 0x11

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 989
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "ITEM_ICON_ID_LIST"

    const/16 v2, 0x12

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 990
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "DATETIME_TIMEZONE"

    const/16 v2, 0x13

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->DATETIME_TIMEZONE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 991
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "IMMEDIATE_RESPONSE"

    const/16 v2, 0x14

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 992
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "LANGUAGE"

    const/16 v2, 0x15

    const/16 v3, 0x2d

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 993
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "URL"

    const/16 v2, 0x16

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 994
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "BROWSER_TERMINATION_CAUSE"

    const/16 v2, 0x17

    const/16 v3, 0x34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 995
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const-string v1, "TEXT_ATTRIBUTE"

    const/16 v2, 0x18

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->TEXT_ATTRIBUTE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    .line 970
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->ADDR_ID:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->FILE_LIST:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->DATETIME_TIMEZONE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->BROWSER_TERMINATION_CAUSE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->TEXT_ATTRIBUTE:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->$VALUES:[Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 999
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1000
    iput p3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->mValue:I

    .line 1001
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;
    .locals 5
    .parameter "value"

    .prologue
    .line 1013
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->values()[Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1014
    .local v1, e:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;
    iget v4, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->mValue:I

    if-ne v4, p0, :cond_0

    .line 1018
    .end local v1           #e:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;
    :goto_1
    return-object v1

    .line 1013
    .restart local v1       #e:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1018
    .end local v1           #e:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;
    .locals 1
    .parameter "name"

    .prologue
    .line 970
    const-class v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 970
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->$VALUES:[Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$ComprehensionTlvTag;->mValue:I

    return v0
.end method
