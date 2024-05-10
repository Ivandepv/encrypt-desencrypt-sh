import pygame
import sys

pygame.init()

width, height = 1280, 1024
screen = pygame.display.set_mode((width, height))

pygame.display.set_caption('¡Felicidades!')
image_path = './felicidades.png'
image = pygame.image.load(image_path)

running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
    screen.fill((255, 255, 255))
    x, y = 100, 100
    screen.blit(image, (x, y))
    pygame.display.flip()

pygame.quit()
sys.exit()