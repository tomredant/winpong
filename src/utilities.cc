// Copyright [2015] <Chafic Najjar>

#include "src/utilities.h"

#include <SDL2/SDL.h>
#include <SDL2/SDL_ttf.h>
#include <QFile>
#include <QDir>
void renderTexture(SDL_Texture* tex,
        SDL_Renderer* ren, SDL_Rect dst, SDL_Rect *clip) {
    SDL_RenderCopy(ren, tex, clip, &dst);
}

void renderTexture(SDL_Texture* tex,
        SDL_Renderer* ren, int x, int y, SDL_Rect* clip) {
    SDL_Rect dst;
    dst.x = x;
    dst.y = y;
    if (clip != nullptr) {
        dst.w = clip->w;
        dst.h = clip->h;
    } else {
        SDL_QueryTexture(tex, nullptr, nullptr, &dst.w, &dst.h);
    }

    renderTexture(tex, ren, dst, clip);
}

SDL_Texture* renderText(const std::string &message,
    const std::string &fontFile, SDL_Color color,
    int fontSize, SDL_Renderer* renderer) {
    QFile fontF(QString::fromStdString(fontFile));
    QString fontPath = QDir::temp().absolutePath() + "/" + fontF.fileName().split("/").last();
    fontF.copy(fontPath);
    TTF_Font* font = TTF_OpenFont(fontPath.toStdString().c_str(), fontSize);

    SDL_Surface* surf = TTF_RenderText_Blended(font, message.c_str(), color);

    SDL_Texture* texture = SDL_CreateTextureFromSurface(renderer, surf);

    SDL_FreeSurface(surf);
    TTF_CloseFont(font);
    return texture;
}
