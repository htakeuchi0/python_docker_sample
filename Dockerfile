# ベースイメージ
FROM python:3.8.1

# 管理者
LABEL maintainer="htakeuchi0 <cis.n6.v56ofv.i46.v7.i@gmail.com>"

# 引数 (UID, ユーザ名, Python作業ルートディレクトリ名)
ARG UID
ARG USERNAME
ARG PYTHONDIR

# ユーザ名，ディレクトリ名，作業ディレクトリの定義
ENV UID=${UID}
ENV USERNAME=${USERNAME}
ENV PYTHONDIR=${PYTHONDIR}
ENV WORKDIR=/home/${USERNAME}/${PYTHONDIR}

# インストール
RUN apt update && \
	apt install -y sudo && \
	apt install -y vim && \
	pip install --upgrade pip && \
	pip install --upgrade setuptools

# Pythonライブラリのインストール
COPY requirements.txt ${WORKDIR}/requirements.txt
RUN pip install -r ${WORKDIR}/requirements.txt

# ユーザの追加
RUN useradd -m ${USERNAME} && \
	usermod -aG sudo ${USERNAME} && \
	chown ${USERNAME}:${USERNAME} -R ${WORKDIR}
RUN echo ${USERNAME}:${USERNAME} | chpasswd
RUN echo 'Defaults visiblepw' >> /etc/sudoers
RUN echo ${USERNAME} ALL=\(ALL\) NOPASSWD:ALL >> /etc/sudoers

# 作業ディレクトリの設定
WORKDIR ${WORKDIR}

# ユーザの設定
USER ${USERNAME}

