# Created by: Yanhui Shen <shen.elf@gmail.com>
# $FreeBSD: head/ports-mgmt/pkg-rmleaf/Makefile 361398 2014-07-09 18:02:58Z rakuco $

PORTNAME=	pkg-rmleaf
PORTVERSION=	0.3
CATEGORIES=	ports-mgmt
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	shen.elf@gmail.com
COMMENT=	Remove leaf packages

LICENSE=	BSD

NO_BUILD=	yes
WRKSRC=		${WRKDIR}

PLIST_FILES=	sbin/pkg-rmleaf

do-extract:
	${MKDIR} ${WRKSRC}
	${CP} ${FILESDIR}/pkg-rmleaf ${WRKSRC}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pkg-rmleaf \
		${STAGEDIR}${PREFIX}/sbin/pkg-rmleaf

.include <bsd.port.mk>
